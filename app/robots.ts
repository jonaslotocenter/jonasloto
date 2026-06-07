import type { MetadataRoute } from 'next';

export default function robots(): MetadataRoute.Robots {
  return {
    rules: [
      {
        userAgent: '*',
        allow: '/',
        disallow: ['/admin', '/pos', '/supervisor', '/otp', '/profile'],
      },
    ],
    sitemap: 'https://jonaslotocenter.com/sitemap.xml',
  };
}
