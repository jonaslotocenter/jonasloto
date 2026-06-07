import type { Metadata } from 'next';
import ResultsClient from './ResultsClient';

export const metadata: Metadata = {
  title: 'Résultats des Tirages',
  description: 'Résultats en temps réel des tirages borlette – New York, Florida, Georgia.',
};

export default function ResultsPage() {
  return <ResultsClient />;
}
