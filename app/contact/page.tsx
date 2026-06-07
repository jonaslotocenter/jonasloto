import type { Metadata } from 'next';
import ContactClient from './ContactClient';

export const metadata: Metadata = {
  title: 'Contact',
  description: 'Contactez Jonas Loto Center.',
};

export default function ContactPage() {
  return <ContactClient />;
}
