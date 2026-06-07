import type { Metadata } from 'next';
import OTPClient from './OTPClient';

export const metadata: Metadata = { title: 'Vérification OTP' };

export default function OTPPage() {
  return <OTPClient />;
}
