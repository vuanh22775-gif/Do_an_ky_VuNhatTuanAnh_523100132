# Rolex Boutique

Rolex Boutique uses Express and MongoDB for the application backend. The customer storefront and order history use server-rendered EJS; the admin dashboard is a React/Vite SPA served at `/admin` in production. Both interfaces use the same MongoDB records and session-authenticated Express APIs.

## Requirements

- Node.js 20.19+ or 22.12+
- MongoDB
- Copy `.env.example` to `.env` and set `MONGODB_URI` and a private `SESSION_SECRET`
- For a new database, optionally set `BOOTSTRAP_ADMIN_USERNAME` and `BOOTSTRAP_ADMIN_PASSWORD` for the first startup; no default admin password is created

## Run

```bash
npm install
npm start
```

`npm start` builds the React admin and starts Express on `PORT` (default `3000`). For development, run `npm run server:dev` and `npm run dev` in separate terminals. Vite proxies `/api` requests to Express at port `3000`.

## Build

```bash
npm run build
```

The build runs TypeScript checking and creates the React app under `dist/`. The production Express server serves this build at `/admin`.

## Frontend Routes

- Customer EJS: `/`, `/sanphammoi`, `/sanphammoi/:id`, `/dichvu`, `/chamsockhachhang`, `/form`, `/dangnhap`, `/thanhtoan`, `/don-hang`
- Legacy EJS administration: `/quanli`, `/quanli/hoadon`, `/quanli/them-san-pham`, `/quanli/them-tai-khoan`
- React administration: `/admin/dashboard`, `/admin/products`, `/admin/categories`, `/admin/orders`, `/admin/customers`, `/admin/analytics`, `/admin/messages`, `/admin/settings`

## API

- Session: `GET /api/auth/check`, `POST /api/auth/login`, `POST /api/auth/logout`
- Catalog: `GET /api/products`, `GET /api/products/:id`
- Product administration: `GET /api/admin/products`, `POST /api/products`, `PUT /api/products/:id`, `DELETE /api/products/:id`
- Orders: `POST /api/orders`, `GET /api/orders`, `GET /api/orders/:id`, `PATCH /api/orders/:id/status`
- Admin data: `GET /api/admin/categories`, `GET /api/admin/customers`, `GET /api/admin/statistics?days=30`, `GET /api/accounts`
- Account administration: `POST /api/accounts`, `PUT /api/accounts/:username`, `DELETE /api/accounts/:username`
- Customer chat: `GET /api/chat/messages`, `POST /api/chat/messages`
- Admin chat: `GET /api/admin/chat/conversations`, `GET /api/admin/chat/:username`, `POST /api/admin/chat/:username`

## MongoDB Models

`User`, `Product`, `Order`, `Registration`, and `ChatMessage`. Product collection groups are currently the existing `classic`, `luxury`, `diving`, and `sport` values; the React category screen reports these groups from actual products.

## Deployment

Vercel configuration is in `vercel.json`; configure `MONGODB_URI`, `SESSION_SECRET`, and `NODE_ENV=production` in the deployment environment. Set bootstrap admin credentials only for the initial deployment to an empty database, then remove them. Do not deploy a local `.env` file.

Stock is decremented atomically per SKU when an order is accepted and restored when an eligible order is cancelled/rejected. Multi-product checkout uses compensating rollback because a standalone local MongoDB does not support multi-document transactions. The current `vnpay`/QR, bank, and COD options are order labels only; no payment provider callback is integrated, so the app cannot verify external payment settlement.