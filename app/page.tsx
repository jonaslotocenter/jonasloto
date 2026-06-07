import type { Metadata } from 'next';
import HomeClient from './HomeClient';

export const metadata: Metadata = {
  title: 'Accueil',
  description: 'Tentez votre chance avec Jonas Loto Center – la loterie en ligne #1 en Haïti. Borlette New York, Florida, Georgia. Résultats en temps réel.',
};

export default function HomePage() {
  return <HomeClient />;
}
