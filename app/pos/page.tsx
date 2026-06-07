import type { Metadata } from 'next';
import POSClient from './POSClient';

export const metadata: Metadata = { title: 'Point de Vente' };

export default function POSPage() {
  return <POSClient />;
}
