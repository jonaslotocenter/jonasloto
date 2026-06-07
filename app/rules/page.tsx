import type { Metadata } from 'next';
import RulesClient from './RulesClient';

export const metadata: Metadata = {
  title: 'Règles du Jeu',
  description: 'Comment jouer à la borlette sur Jonas Loto Center.',
};

export default function RulesPage() {
  return <RulesClient />;
}
