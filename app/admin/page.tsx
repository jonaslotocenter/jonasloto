import type { Metadata } from 'next';
import AdminClient from './AdminClient';

export const metadata: Metadata = { title: 'Administration' };

export default function AdminPage() {
  return <AdminClient />;
}
