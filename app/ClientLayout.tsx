'use client';

import React, { useState, useEffect } from 'react';
import '@/lib/i18n';
import Layout from '@/components/Layout';
import ErrorBoundary from '@/components/ErrorBoundary';

export default function ClientLayout({ children }: { children: React.ReactNode }) {
  const [mounted, setMounted] = useState(false);

  useEffect(() => {
    setMounted(true);
  }, []);

  if (!mounted) {
    return (
      <div className="min-h-screen bg-slate-50 flex items-center justify-center">
        <div className="w-12 h-12 border-4 border-blue-600 border-t-transparent rounded-full animate-spin"></div>
      </div>
    );
  }

  return (
    <ErrorBoundary>
      <Layout>{children}</Layout>
    </ErrorBoundary>
  );
}
