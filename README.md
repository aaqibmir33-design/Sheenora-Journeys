# 🏔️ Sheenora Journeys — Premium Kashmir Travel Platform

> **Where Every Journey Unfolds Kashmir’s Magic**

Sheenora Journeys is a full-stack, production-ready destination management and travel booking system configured with premium Kashmiri tourism aesthetics, high-performance local CRM data storage, secure client-to-server transaction gateways, and instant spreadsheet compatibility exports.

---

## 🌟 Core App Core Features

- 🛥️ **Kashmir Tour Packages**: Curated itineraries (Srinagar, Gulmarg, Pahalgam, Sonamarg, Doodhpathri, Yusmarg, Gurez Valley, and Wular Lake) designed with offline fallback data and interactive pricing.
- 💳 **Secure Razorpay Integration**: Direct order processing API pathways tied seamlessly with user inputs (including customer PAN Card compliance details) with smart sandboxed simulations when credentials are not preset.
- 🗄️ **Local SQLite-style Data Engine**: Zero cold-start reactive data engine that ensures inquiries and booking requests are synchronized instantly without loss.
- 📊 **Dynamic CRM Dashboard (Leads & Directory)**: Comprehensive back-office view showing total revenues, booking trends, and active operations.
- 📥 **Interactive Excel/Spreadsheet Export**:
  - **Export Directory to Excel**: Generates formatted CSVs of customer profiles including Lifetime spends, registration dates, personal contact entries, and CRM notes.
  - **Export Bookings to Excel**: Automatically builds standard sheets for bookings including Scheduled dates, designated packages, financial status, and guest details.
- 📬 **Kashmiri Diaries Newsletter**: Direct signup system using server-authenticated pathways, triggering ₹1,500 registration welcome vouchers.

---

## 🏗️ Technical Stack

- **Frontend Core**: React 19 + TypeScript + Vite
- **Visuals & Design**: Tailwind CSS + Motion (Framer Motion)
- **Icons**: Lucide React
- **Server Ecosystem**: Express.js + TSX
- **Bundler & Compiler**: Vite (Client assets) + esbuild (CJS production server)

---

## ⚙️ Environment Variables Setup

Create a `.env` file in your root folder based on the included `.env.example`:

```env
# .env Configuration Example
GEMINI_API_KEY=your_gemini_api_key_here
APP_URL=https://your-domain.com

# Razorpay Official Keys
RAZORPAY_KEY_ID=rzp_test_T2pbeuclHL0QXH
RAZORPAY_KEY_SECRET=your_razorpay_secret_here
```

---

## 🚀 How to Run Locally

### 1. Install Dependencies
```bash
npm install
```

### 2. Launch Development Server
Starts the Node TSX live environment on `http://localhost:3000`:
```bash
npm run dev
```

### 3. Verify Types & Compilation
```bash
npm run lint
```

### 4. Create Production Build
Bundles the React single-page frontend into `/dist` and creates a single-file, self-contained server script at `/dist/server.cjs`:
```bash
npm run build
```

### 5. Launch Standard Production Server
```bash
npm run start
```

---

## 🐳 Docker Deployment

The repository is equipped with a multi-stage `Dockerfile` configured to compress static assets and isolate private variables:

```bash
# 1. Build the production image
docker build -t sheenora-journeys .

# 2. Run container exposing Port 3000
docker run -p 3000:3000 --env-file .env sheenora-journeys
```

---

## 🐙 How to Sync / Share All Files to GitHub

You can export the entire workspace from Google AI Studio directly to your personal GitHub target in **two simple ways**:

### Method A: Direct Export from the Settings Menu (Simplest)
1. In the upper right corner of the **Google AI Studio** workspace, click the **Settings (Gear Icon)** or the project name dropdown menu.
2. Select the **Export to GitHub** action.
3. Authenticate with your GitHub account when prompted.
4. Choose whether to create a brand-new repository (e.g., `sheenora-journeys`) or push to an existing workspace.
5. All files, including the configuration, CI/CD automated test suites (`/.github/workflows/verify-ci.yml`), and dockerized environments will be pushed instantly!

### Method B: Manual Git Commands Terminal Route
If you prefer standard Git actions via your secondary environment or localized downloads, initialize the codebase with:

```bash
# Initialize repository
git init

# Track all newly created files
git add .

# State your commit message
git commit -m "feat: complete Kashmir booking architecture with Excel CRM exports and Razorpay ID"

# Wire repository to your GitHub account coordinates
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/sheenora-journeys.git

# Push to your active master branch
git push -u origin main
```

---

*Sheenora Journeys is compiled to run flawlessly on Vercel, Render, or Google Cloud Run seamlessly. Enjoy hosting the magic of Kashmir! 🏔️✨*
