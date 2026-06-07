import type { Metadata } from 'next';
import './globals.css';
import ClientLayout from './ClientLayout';

export const metadata: Metadata = {
  title: {
    default: 'Jonas Loto Center | #1 Loterie en Haïti',
    template: '%s | Jonas Loto Center',
  },
  description: 'Le centre de loterie le plus fiable en Haïti. Jouez en ligne ou chez nos agents agréés. Borlette, Loto 3, Loto 4, Loto 5, Marriage – New York, Florida, Georgia.',
  keywords: ['loto haiti', 'borlette', 'loterie haiti', 'jonas loto', 'loto en ligne', 'tirage loto'],
  authors: [{ name: 'Jonas Loto Center' }],
  metadataBase: new URL('https://jonaslotocenter.com'),
  openGraph: {
    title: 'Jonas Loto Center | #1 Loterie en Haïti',
    description: 'Le centre de loterie le plus fiable en Haïti. Jouez en ligne ou chez nos agents agréés.',
    url: 'https://jonaslotocenter.com',
    siteName: 'Jonas Loto Center',
    locale: 'fr_HT',
    type: 'website',
  },
  twitter: {
    card: 'summary_large_image',
    title: 'Jonas Loto Center | #1 Loterie en Haïti',
    description: 'Le centre de loterie le plus fiable en Haïti.',
  },
  robots: {
    index: true,
    follow: true,
    googleBot: { index: true, follow: true },
  },
};

export default function RootLayout({ children }: { children: React.ReactNode }) {
  return (
    <html lang="fr" suppressHydrationWarning>
      <body>
        <ClientLayout>{children}</ClientLayout>
      </body>
    </html>
  );
}
