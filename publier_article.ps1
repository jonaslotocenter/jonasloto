# ============================================
# SCRIPT DE PUBLICATION - BOURSE DU TEMPS
# Exécuter depuis PowerShell dans P:\boursedutemps
# ============================================

# 1. TON TOKEN (copie-le depuis le localStorage de ton navigateur)
#    Ouvre boursedutemps.vercel.app -> F12 -> Application -> Local Storage -> "token"
$token = "COLLE_TON_TOKEN_ICI"

# 2. CONTENU DE L'ARTICLE
$title = "Construire une économie circulaire du savoir"

$content = @"
<div style="max-width:740px;margin:0 auto;font-family:'Segoe UI',system-ui,sans-serif;color:#1a1a1a;line-height:1.75;">

  <div style="text-align:center;padding:2rem 0 1.5rem;border-bottom:1px solid #e8e8e8;margin-bottom:2rem;">
    <span style="display:inline-block;background:#e1f5ee;color:#0f6e56;font-size:12px;font-weight:700;padding:4px 14px;border-radius:6px;letter-spacing:0.06em;text-transform:uppercase;margin-bottom:1rem;">Économie du savoir · Solidarité · Impact</span>
    <h1 style="font-size:2rem;font-weight:700;color:#111;line-height:1.2;margin-bottom:1rem;">Ton temps a de la valeur.<br/><span style="color:#1D9E75;">Prouve-le.</span></h1>
    <p style="font-size:1.05rem;color:#555;max-width:560px;margin:0 auto 1rem;">Dans un monde où l'argent sépare, le temps unit. Bourse du Temps est la plateforme où chaque heure que tu donnes en vaut une que tu reçois — et où le savoir grandit à chaque échange.</p>
    <div style="display:flex;gap:12px;justify-content:center;flex-wrap:wrap;margin-top:1.25rem;">
      <a href="https://boursedutemps.vercel.app" style="background:#1D9E75;color:#fff;border-radius:8px;padding:12px 24px;font-size:14px;font-weight:700;text-decoration:none;">Rejoins-nous maintenant ↗</a>
      <a href="https://boursedutemps.vercel.app/members" style="background:transparent;color:#1D9E75;border:1.5px solid #1D9E75;border-radius:8px;padding:12px 24px;font-size:14px;font-weight:700;text-decoration:none;">Commence ton premier échange ↗</a>
    </div>
  </div>

  <div style="margin-bottom:2.5rem;">
    <p style="font-size:11px;font-weight:700;letter-spacing:0.1em;color:#1D9E75;text-transform:uppercase;margin-bottom:0.4rem;">Le principe fondateur</p>
    <h2 style="font-size:1.4rem;font-weight:700;color:#111;margin-bottom:0.75rem;">Le savoir ne s'épuise pas. Il se multiplie.</h2>
    <p style="color:#444;line-height:1.8;margin-bottom:1rem;">Contrairement à l'argent, le savoir ne disparaît pas quand on le partage — <strong>il se duplique, s'enrichit, se propage.</strong> Bourse du Temps repose sur cette vérité simple et révolutionnaire.</p>
    <blockquote style="border-left:4px solid #1D9E75;padding:1rem 1.5rem;margin:1.5rem 0;background:#f7fdfb;border-radius:0 8px 8px 0;font-style:italic;color:#1a1a1a;">
      « Quand tu partages ce que tu sais, tu ne perds rien. Et la communauté gagne tout. »
    </blockquote>
    <p style="color:#444;line-height:1.8;margin-bottom:1rem;">Plus les membres échangent, plus la communauté devient compétente. Plus les compétences circulent, plus elles se diversifient. C'est un cercle vertueux sans fin — et <strong>tu en es le moteur.</strong></p>
    <p style="color:#444;line-height:1.8;">Dans les modèles économiques classiques, les ressources s'épuisent. Dans une banque du temps, c'est l'inverse : plus on donne, plus la communauté s'enrichit. Le savoir se multiplie au lieu de se diviser.</p>
  </div>

  <hr style="border:none;border-top:1px solid #e8e8e8;margin:2rem 0;"/>

  <div style="margin-bottom:2.5rem;">
    <p style="font-size:11px;font-weight:700;letter-spacing:0.1em;color:#1D9E75;text-transform:uppercase;margin-bottom:0.4rem;">Les trois piliers</p>
    <h2 style="font-size:1.4rem;font-weight:700;color:#111;margin-bottom:1rem;">Un modèle simple. Un impact profond.</h2>
    <div style="display:grid;grid-template-columns:repeat(auto-fit,minmax(200px,1fr));gap:14px;margin:1rem 0;">
      <div style="background:#fff;border:1px solid #e8e8e8;border-radius:12px;padding:1rem 1.1rem;">
        <div style="font-size:20px;margin-bottom:8px;">⇄</div>
        <h3 style="font-size:14px;font-weight:700;color:#111;margin-bottom:6px;">L'échange horizontal</h3>
        <p style="font-size:13px;color:#555;line-height:1.55;margin:0;">Une heure de traduction = une heure de jardinage = une heure de maths. Pas de hiérarchie. Toutes les compétences ont la même valeur.</p>
      </div>
      <div style="background:#fff;border:1px solid #e8e8e8;border-radius:12px;padding:1rem 1.1rem;">
        <div style="font-size:20px;margin-bottom:8px;">◎</div>
        <h3 style="font-size:14px;font-weight:700;color:#111;margin-bottom:6px;">La réciprocité différée</h3>
        <p style="font-size:13px;color:#555;line-height:1.55;margin:0;">Tu aides aujourd'hui, tu reçois demain. La confiance devient une infrastructure sociale — plus solide que n'importe quelle banque.</p>
      </div>
      <div style="background:#fff;border:1px solid #e8e8e8;border-radius:12px;padding:1rem 1.1rem;">
        <div style="font-size:20px;margin-bottom:8px;">◈</div>
        <h3 style="font-size:14px;font-weight:700;color:#111;margin-bottom:6px;">Les savoirs invisibles</h3>
        <p style="font-size:13px;color:#555;line-height:1.55;margin:0;">Écoute, transmission culturelle, artisanat, accompagnement — ici, ces talents retrouvent leur vraie valeur.</p>
      </div>
    </div>
  </div>

  <hr style="border:none;border-top:1px solid #e8e8e8;margin:2rem 0;"/>

  <div style="margin-bottom:2.5rem;">
    <p style="font-size:11px;font-weight:700;letter-spacing:0.1em;color:#1D9E75;text-transform:uppercase;margin-bottom:0.4rem;">Le cycle vertueux</p>
    <h2 style="font-size:1.4rem;font-weight:700;color:#111;margin-bottom:0.75rem;">Chaque échange ouvre une porte.</h2>
    <p style="color:#444;line-height:1.8;margin-bottom:1rem;">Voici ce qui se passe concrètement dans notre communauté, chaque jour :</p>
    <div style="margin:1rem 0;">
      <div style="display:flex;align-items:flex-start;gap:12px;padding:12px 0;border-bottom:1px solid #f0f0f0;"><div style="min-width:28px;height:28px;border-radius:50%;background:#e1f5ee;color:#0f6e56;font-size:13px;font-weight:700;display:flex;align-items:center;justify-content:center;">1</div><div><strong style="display:block;font-size:14px;color:#111;">Aide informatique</strong><span style="font-size:13px;color:#666;">→ Sofía aide Marco à configurer son ordinateur</span></div></div>
      <div style="display:flex;align-items:flex-start;gap:12px;padding:12px 0;border-bottom:1px solid #f0f0f0;"><div style="min-width:28px;height:28px;border-radius:50%;background:#e1f5ee;color:#0f6e56;font-size:13px;font-weight:700;display:flex;align-items:center;justify-content:center;">2</div><div><strong style="display:block;font-size:14px;color:#111;">Cours de cuisine</strong><span style="font-size:13px;color:#666;">→ Marco transmet ses recettes à Amara</span></div></div>
      <div style="display:flex;align-items:flex-start;gap:12px;padding:12px 0;border-bottom:1px solid #f0f0f0;"><div style="min-width:28px;height:28px;border-radius:50%;background:#e1f5ee;color:#0f6e56;font-size:13px;font-weight:700;display:flex;align-items:center;justify-content:center;">3</div><div><strong style="display:block;font-size:14px;color:#111;">Traduction</strong><span style="font-size:13px;color:#666;">→ Amara aide Chen à traduire ses documents</span></div></div>
      <div style="display:flex;align-items:flex-start;gap:12px;padding:12px 0;border-bottom:1px solid #f0f0f0;"><div style="min-width:28px;height:28px;border-radius:50%;background:#e1f5ee;color:#0f6e56;font-size:13px;font-weight:700;display:flex;align-items:center;justify-content:center;">4</div><div><strong style="display:block;font-size:14px;color:#111;">Coaching académique</strong><span style="font-size:13px;color:#666;">→ Chen accompagne un lycéen vers ses examens</span></div></div>
      <div style="display:flex;align-items:flex-start;gap:12px;padding:12px 0;"><div style="min-width:28px;height:28px;border-radius:50%;background:#e1f5ee;color:#0f6e56;font-size:13px;font-weight:700;display:flex;align-items:center;justify-content:center;">5</div><div><strong style="display:block;font-size:14px;color:#111;">Le cercle recommence ∞</strong><span style="font-size:13px;color:#666;">→ chaque nouveau membre crée de nouvelles connexions</span></div></div>
    </div>
    <p style="color:#444;line-height:1.8;margin-top:1rem;"><strong>Ce cercle ne s'arrête jamais.</strong> Chaque échange crée un nouveau point d'entrée dans la communauté. Et il t'attend.</p>
  </div>

  <hr style="border:none;border-top:1px solid #e8e8e8;margin:2rem 0;"/>

  <div style="margin-bottom:2.5rem;">
    <p style="font-size:11px;font-weight:700;letter-spacing:0.1em;color:#1D9E75;text-transform:uppercase;margin-bottom:0.4rem;">Pourquoi maintenant ?</p>
    <h2 style="font-size:1.4rem;font-weight:700;color:#111;margin-bottom:0.75rem;">Le monde en a besoin. Ta communauté aussi.</h2>
    <p style="color:#444;line-height:1.8;margin-bottom:1rem;">Dans un monde marqué par l'inflation, la précarité, la fracture numérique, la migration et l'isolement social, <strong>une économie basée sur le temps et le savoir n'est pas un luxe — c'est une nécessité.</strong></p>
    <div style="display:grid;grid-template-columns:repeat(auto-fit,minmax(140px,1fr));gap:10px;margin:1rem 0;">
      <div style="background:#f5f5f5;border:1px solid #e5e5e5;border-radius:8px;padding:10px 14px;font-size:13px;color:#222;font-weight:600;text-align:center;">Apprendre sans payer</div>
      <div style="background:#f5f5f5;border:1px solid #e5e5e5;border-radius:8px;padding:10px 14px;font-size:13px;color:#222;font-weight:600;text-align:center;">Contribuer sans argent</div>
      <div style="background:#f5f5f5;border:1px solid #e5e5e5;border-radius:8px;padding:10px 14px;font-size:13px;color:#222;font-weight:600;text-align:center;">Créer des réseaux</div>
      <div style="background:#f5f5f5;border:1px solid #e5e5e5;border-radius:8px;padding:10px 14px;font-size:13px;color:#222;font-weight:600;text-align:center;">Valoriser les talents</div>
      <div style="background:#f5f5f5;border:1px solid #e5e5e5;border-radius:8px;padding:10px 14px;font-size:13px;color:#222;font-weight:600;text-align:center;">Renforcer l'autonomie</div>
      <div style="background:#f5f5f5;border:1px solid #e5e5e5;border-radius:8px;padding:10px 14px;font-size:13px;color:#222;font-weight:600;text-align:center;">Tisser la solidarité</div>
    </div>
    <p style="color:#444;line-height:1.8;"><strong>Elle transforme le temps en infrastructure sociale.</strong> C'est un modèle inclusif, durable, non-marchand et empouvoirant — aligné avec les Objectifs de Développement Durable.</p>
  </div>

  <div style="background:#e1f5ee;border-radius:14px;padding:2rem;margin:2rem 0;text-align:center;">
    <h2 style="font-size:1.4rem;font-weight:700;color:#085041;margin-bottom:0.75rem;">Ce n'est pas une utopie. C'est déjà en marche.</h2>
    <p style="color:#0f6e56;line-height:1.8;margin-bottom:0.75rem;">Une économie circulaire du savoir existe. Elle grandit. Et chaque nouveau membre la rend plus puissante, plus diverse, plus humaine.</p>
    <p style="color:#0f6e56;line-height:1.8;margin-bottom:1.25rem;"><strong>Tu ne rejoins pas seulement une plateforme. Tu rejoins un mouvement.</strong></p>
    <a href="https://boursedutemps.vercel.app/services" style="background:#1D9E75;color:#fff;border-radius:8px;padding:12px 24px;font-size:14px;font-weight:700;text-decoration:none;">Partage ton savoir ↗</a>
  </div>

  <div style="text-align:center;padding:2rem 0;border-top:1px solid #e8e8e8;margin-top:1.5rem;">
    <h2 style="font-size:1.4rem;font-weight:700;color:#111;margin-bottom:0.75rem;">Prêt·e à faire circuler ce que tu sais ?</h2>
    <p style="color:#444;line-height:1.8;max-width:500px;margin:0 auto 1.5rem;">Des centaines de personnes échangent déjà leurs compétences. Il ne manque que toi.</p>
    <div style="display:flex;gap:12px;justify-content:center;flex-wrap:wrap;">
      <a href="https://boursedutemps.vercel.app" style="background:#1D9E75;color:#fff;border-radius:8px;padding:12px 24px;font-size:14px;font-weight:700;text-decoration:none;">Crée ton profil maintenant ↗</a>
      <a href="https://boursedutemps.vercel.app/requests" style="background:transparent;color:#1D9E75;border:1.5px solid #1D9E75;border-radius:8px;padding:12px 24px;font-size:14px;font-weight:700;text-decoration:none;">Explorer les échanges ↗</a>
    </div>
  </div>

</div>
"@

$category = "Actualité"

# 3. ENVOI À L'API
$body = @{
    title      = $title
    content    = $content
    category   = $category
    media      = @()
    externalLink = ""
} | ConvertTo-Json -Depth 5

try {
    $response = Invoke-RestMethod `
        -Uri "https://boursedutemps.vercel.app/api/blogs" `
        -Method POST `
        -Headers @{
            "Content-Type"  = "application/json"
            "Authorization" = "Bearer $token"
        } `
        -Body $body

    Write-Host ""
    Write-Host "✅ Article publié avec succès !" -ForegroundColor Green
    Write-Host "🔗 Voir sur : https://boursedutemps.vercel.app/blog" -ForegroundColor Cyan
    Write-Host ""
} catch {
    Write-Host ""
    Write-Host "❌ Erreur lors de la publication :" -ForegroundColor Red
    Write-Host $_.Exception.Message -ForegroundColor Red
    Write-Host ""
    Write-Host "👉 Vérifie que ton token est correct et que tu es bien connecté." -ForegroundColor Yellow
}