import type { Metadata } from 'next';
import BuyTicketClient from './BuyTicketClient';

export const metadata: Metadata = {
  title: 'Acheter un Billet',
  description: 'Achetez vos billets de borlette en ligne – New York, Florida, Georgia.',
};

export default function BuyTicketPage() {
  return <BuyTicketClient />;
}
