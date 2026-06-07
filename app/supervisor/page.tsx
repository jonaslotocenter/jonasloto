import type { Metadata } from 'next';
import SupervisorClient from './SupervisorClient';

export const metadata: Metadata = { title: 'Superviseur' };

export default function SupervisorPage() {
  return <SupervisorClient />;
}
