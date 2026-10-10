# ZyroX CV2 — Phone Setup (Hindi/Hinglish)

Bhai, iPhone se files upload/configure kar sakte ho, lekin bot ko 24/7 chalane ke liye hosting service chahiye. Main tumhare Discord/Replit account me login ya deployment tumhari jagah nahi kar sakta.

## Important: pehle kya chahiye
- Discord Developer Portal me apna application/bot.
- Bot token (sirf hosting ke Secrets/Environment Variables me paste karna; chat me nahi).
- Discord OAuth Client ID/Secret for dashboard login.
- Owner Discord user ID.
- Dashboard API ke liye ek strong random secret.
- Music chahiye to alag Lavalink v4 server; music bina Lavalink ke kaam nahi karega.

## iPhone se files ready karna
1. Is ZIP ko iPhone Files app me save karo.
2. Safari me apne hosting platform (for example Replit) ko kholo aur sign in karo.
3. New project/import from ZIP ka option available ho to ZIP upload karo. Agar platform ZIP import support na kare, GitHub repository import/upload ka use karo.
4. Project ke README aur `START-HERE.txt` ko follow karo. Is project me Python bot/API aur Next.js dashboard alag services hain; ek hi run command se poora system necessarily start nahi hota.

## Environment variables
`bot/.env.example` aur `dashboard/.env.example` sample templates hain. Hosting dashboard ke Secrets/Environment Variables section me values set karo.

Bot/API variables: `TOKEN`, `OWNER_IDS`, `DASHBOARD_API_KEY`, `API_ENABLED`, `API_PORT`, `CORS_ORIGINS`.
Dashboard variables: `NEXT_PUBLIC_API_URL`, `NEXT_PUBLIC_DASHBOARD_API_KEY`, `NEXTAUTH_URL`, `NEXTAUTH_SECRET`, `DISCORD_CLIENT_ID`, `DISCORD_CLIENT_SECRET`, `NEXT_PUBLIC_ADMIN_IDS`.

- `DASHBOARD_API_KEY` aur `NEXT_PUBLIC_DASHBOARD_API_KEY` ka value same hona chahiye.
- `NEXTAUTH_SECRET` alag strong random secret hona chahiye.
- `NEXTAUTH_URL` ko deployed dashboard ka HTTPS URL set karna hoga.
- `NEXT_PUBLIC_API_URL` ko deployed API ke HTTPS URL + `/api/v1` par set karo.
- Discord Developer Portal > OAuth2 me redirect URI add karo: `https://YOUR-DASHBOARD-DOMAIN/api/auth/callback/discord` (placeholder ko apne actual domain se replace karna).
- API CORS origins me actual dashboard URL hona chahiye.

## Run/build commands
Bot service working directory `bot/`: `pip install -r requirements.txt` then `python CodeX.py`.
Dashboard service working directory `dashboard/`: `npm install`, then `npm run build`, then `npm start`.
API server startup command depends on the API runner in the source; check `bot/README.md` and `bot/api` setup before configuring a separate API service.

## Safety / reality check
This archive is source code, not a hosted/live bot. It cannot be made live without your own Discord credentials and a hosting account. Do not share token/client secret in chat or screenshots. After deployment, verify login, bot online status, dashboard API connection, and individual features in a test server before using it in your main server.
