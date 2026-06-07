'use client';

import React, { useEffect } from 'react';
import '@/lib/i18n';
import Layout from '@/components/Layout';
import ErrorBoundary from '@/components/ErrorBoundary';

export default function ClientLayout({ children }: { children: React.ReactNode }) {
  return (
    <ErrorBoundary>
      <Layout>{children}</Layout>
    </ErrorBoundary>
  );
}
