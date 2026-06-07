# Guide de Migration Vite → Next.js

## Ce qui a changé

### Variables d'environnement
| Avant (Vite) | Après (Next.js) |
|---|---|
| `VITE_SUPABASE_URL` | `NEXT_PUBLIC_SUPABASE_URL` |
| `VITE_SUPABASE_ANON_KEY` | `NEXT_PUBLIC_SUPABASE_ANON_KEY` |
| `VITE_ADMIN_EMAIL` | `NEXT_PUBLIC_ADMIN_EMAIL` |

**Action requise :** Mettre à jour dans Vercel → Settings → Environment Variables.

### Routing
| Avant (React Router) | Après (Next.js) |
|---|---|
| `<Link to="/page">` | `<Link href="/page">` |
| `useNavigate()` | `useRouter()` |
| `navigate('/path')` | `router.push('/path')` |
| `useLocation()` | `usePathname()` / `useSearchParams()` |
| `location.state` | URL search params (`?key=value`) |

### Structure des fichiers
```
Avant (Vite):          Après (Next.js):
src/
  pages/               app/
    Home.tsx    →        HomeClient.tsx + page.tsx
    Results.tsx →        results/ResultsClient.tsx + page.tsx
    ...                  ...
  components/          components/
  lib/                 lib/
main.tsx               app/layout.tsx (automatique)
App.tsx                app/ClientLayout.tsx
index.html             (supprimé, géré par Next.js)
vite.config.ts         next.config.ts
```

### SEO (nouveau !)
Chaque page exporte maintenant ses propres métadonnées :
```tsx
export const metadata: Metadata = {
  title: 'Titre de la page',
  description: 'Description pour Google...',
};
```

Le layout racine (`app/layout.tsx`) contient les métadonnées par défaut avec OpenGraph et Twitter Cards.

### Directives client/serveur
Tous les composants interactifs (hooks, événements) ont `'use client'` en haut.

## Installation

```bash
npm install
npm run dev
```

## Déploiement Vercel

1. Supprimer les anciennes variables `VITE_*`
2. Ajouter les nouvelles variables `NEXT_PUBLIC_*`
3. Vérifier que le Framework est détecté comme **Next.js**
4. Déployer !
