import type { Metadata } from 'next';
import ProfileClient from './ProfileClient';

export const metadata: Metadata = {
  title: 'Mon Profil',
  description: 'Gérez votre compte Jonas Loto Center.',
};

export default function ProfilePage() {
  return <ProfileClient />;
}
