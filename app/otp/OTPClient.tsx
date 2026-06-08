'use client';

import React, { useState, useEffect } from 'react';
import { useTranslation } from 'react-i18next';
import { motion } from 'motion/react';
import { 
  AlertCircle, CheckCircle2, RefreshCw
} from 'lucide-react';
import { useRouter, useSearchParams } from 'next/navigation';
import { supabase } from '@/lib/supabase';
import Logo from '@/components/Logo';

export default function OTPClient() {
  const { t } = useTranslation();
  const router = useRouter();
  const searchParams = useSearchParams();
  const email = searchParams.get('email');

  const [otp, setOtp] = useState(['', '', '', '', '', '']);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [resending, setResending] = useState(false);
  const [timer, setTimer] = useState(600);
  const [sent, setSent] = useState(false);

  useEffect(() => {
    if (!email) {
      router.push('/profile');
      return;
    }
    // Supabase a déjà envoyé l'OTP lors du signUp/signIn
    // On démarre juste le timer
    setSent(true);
    const interval = setInterval(() => {
      setTimer(prev => (prev > 0 ? prev - 1 : 0));
    }, 1000);
    return () => clearInterval(interval);
  }, [email, router]);

  const handleResend = async () => {
    if (!email) return;
    setResending(true);
    setError(null);
    try {
      const { error } = await supabase.auth.resend({
        type: 'signup',
        email,
      });
      if (error) throw error;
      setTimer(600);
    } catch (err: any) {
      setError(err.message);
    } finally {
      setResending(false);
    }
  };

  const handleChange = (index: number, value: string) => {
    if (!/^\d*$/.test(value)) return;
    if (value.length > 1) return;
    const newOtp = [...otp];
    newOtp[index] = value;
    setOtp(newOtp);
    if (value && index < 5) {
      document.getElementById(`otp-${index + 1}`)?.focus();
    }
  };

  const handleKeyDown = (index: number, e: React.KeyboardEvent) => {
    if (e.key === 'Backspace' && !otp[index] && index > 0) {
      document.getElementById(`otp-${index - 1}`)?.focus();
    }
  };

  const handleVerify = async (e: React.FormEvent) => {
    e.preventDefault();
    const token = otp.join('');
    if (token.length < 6 || !email) return;

    setLoading(true);
    setError(null);

    try {
      // Vérifier l'OTP via Supabase Auth
      const { error } = await supabase.auth.verifyOtp({
        email,
        token,
        type: 'email',
      });

      if (error) throw error;

      // Marquer la session comme vérifiée
      sessionStorage.setItem('otp_verified', 'true');
      router.push('/profile');
    } catch (err: any) {
      setError(t('invalid_otp'));
    } finally {
      setLoading(false);
    }
  };

  const formatTime = (seconds: number) => {
    const mins = Math.floor(seconds / 60);
    const secs = seconds % 60;
    return `${mins}:${secs.toString().padStart(2, '0')}`;
  };

  return (
    <div className="min-h-[80vh] flex items-center justify-center px-4 py-20 bg-slate-50 dark:bg-dark-bg">
      <motion.div 
        initial={{ opacity: 0, y: 20 }}
        animate={{ opacity: 1, y: 0 }}
        className="max-w-md w-full"
      >
        <div className="text-center mb-10">
          <div className="inline-block mb-6">
            <Logo className="w-24 h-24" />
          </div>
          <h1 className="text-4xl font-black text-primary dark:text-secondary tracking-tighter uppercase italic leading-none mb-2">
            {t('otp_verification')}
          </h1>
          <p className="text-slate-500 dark:text-slate-400 font-medium">
            {t('otp_sent')} <span className="text-primary dark:text-secondary font-bold">{email}</span>
          </p>
        </div>

        <div className="card p-8 md:p-10">
          <form onSubmit={handleVerify} className="space-y-8">
            <div className="flex justify-between gap-2">
              {otp.map((digit, i) => (
                <input
                  key={i}
                  id={`otp-${i}`}
                  type="text"
                  inputMode="numeric"
                  maxLength={1}
                  value={digit}
                  onChange={(e) => handleChange(i, e.target.value)}
                  onKeyDown={(e) => handleKeyDown(i, e)}
                  className="w-12 h-16 text-center text-3xl font-black bg-slate-50 border-2 border-slate-100 rounded-xl focus:border-primary focus:ring-4 focus:ring-primary/10 focus:outline-none transition-all dark:bg-dark-bg dark:border-dark-border dark:text-white dark:focus:border-secondary dark:focus:ring-secondary/10"
                  required
                />
              ))}
            </div>

            <div className="flex justify-between items-center text-xs font-bold uppercase tracking-widest">
              <div className="text-slate-400">
                Expire dans : <span className={timer < 60 ? "text-accent" : "text-primary dark:text-secondary"}>{formatTime(timer)}</span>
              </div>
              <button 
                type="button"
                onClick={handleResend}
                disabled={resending || timer > 540}
                className="text-primary hover:underline disabled:opacity-50 dark:text-secondary flex items-center gap-1"
              >
                <RefreshCw size={14} className={resending ? "animate-spin" : ""} /> {t('resend_otp')}
              </button>
            </div>

            {error && (
              <div className="p-4 bg-accent/5 border border-accent/10 rounded-xl flex items-center gap-3 text-accent text-xs font-bold">
                <AlertCircle size={18} /> {error}
              </div>
            )}

            <button 
              type="submit" 
              disabled={loading || otp.some(d => !d)}
              className="w-full btn-primary py-4 text-lg flex items-center justify-center gap-2"
            >
              {loading ? (
                <div className="w-6 h-6 border-4 border-white border-t-transparent rounded-full animate-spin"></div>
              ) : (
                <>
                  <CheckCircle2 size={20} /> {t('verify_otp')}
                </>
              )}
            </button>
          </form>

          <div className="mt-10 pt-8 border-t border-slate-100 dark:border-dark-border text-center">
            <p className="text-xs text-slate-400 font-medium">
              Vous n'avez pas reçu l'e-mail ? Vérifiez vos spams ou essayez une autre adresse.
            </p>
          </div>
        </div>
      </motion.div>
    </div>
  );
}
