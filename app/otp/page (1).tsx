import type { Metadata } from 'next';
import { Suspense } from 'react';
import OTPClient from './OTPClient';

export const metadata: Metadata = { title: 'Vérification OTP' };

export default function OTPPage() {
  return (
    <Suspense fallback={<div className="min-h-screen flex items-center justify-center"><div className="w-12 h-12 border-4 border-primary border-t-transparent rounded-full animate-spin"></div></div>}>
      <OTPClient />
    </Suspense>
  );
}
