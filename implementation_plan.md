# Envento - Implementation & Architecture Plan

This document outlines the architecture, tech stack, and step-by-step implementation plan for building a highly scalable file-sharing platform (similar to WeTransfer) across Web and Mobile.

## 1. Architecture & Tech Stack Recommendations

To ensure smooth synchronization between the website and the app, and to easily handle 50-60 simultaneous heavy uploads/downloads, we need a decoupled architecture (Backend API + Separate Frontends).

*   **Frontend (Website):** Next.js (React) or Vue.js - Excellent for performance and SEO.
*   **Mobile App:** React Native or Flutter - Allows sharing a single codebase for both iOS and Android, directly syncing with the same backend API as the website.
*   **Backend / Main Code:** Node.js (Express/NestJS) or Go - Both are highly capable of handling high I/O concurrency.
*   **Database:**
    *   PostgreSQL: For storing user data, link metadata, file history, and permissions.
    *   Redis: For rate-limiting, session management, and fast OTP verification.
*   **Cloud Storage:** Backblaze B2 or Wasabi. Both are S3-compatible and significantly cheaper than AWS S3 with zero/low egress fees.

---

## 2. Feature Breakdown & Best Approaches

### 1. Script & Add-ons Structure
*   **Main Code (Core):** The central API handling file metadata, user authentication, and storage routing.
*   **Add-ons (Modular Extensions):**
    1.  *Add-on 1 (e.g., Advanced Analytics/History):* Tracks who downloaded the file and when.
    2.  *Add-on 2 (e.g., Security & Passwords):* Password protection and expiration controls for links.
    3.  *Add-on 3 (e.g., Email Notifications/SMTP):* Handles the email dispatching and OTP flows.

### 2 & 3. Guest Mode (Send by Link)
*   **Flow:** A user visits the app/site -> drops files -> generates a link instantly.
*   **Implementation:** No database user record is required. The system creates a unique UUID for the transfer session, uploads the files, and generates a shareable link (e.g., `envento.com/t/xyz123`).

### 4. Authenticated Mode (Send by Email + OTP)
*   **Flow:** If the user chooses "Send via Email", they are prompted to verify their identity.
*   **Implementation:** Passwordless Authentication.
    *   User enters email -> Backend generates a 6-digit OTP -> Sends via Email (using SendGrid, AWS SES, or Resend).
    *   User enters OTP -> Backend validates via Redis -> Grants an access token (JWT).
    *   *Benefit:* No passwords to manage, highly secure, and prevents spam.

### 5. History & Dashboard
*   **Implementation:** Since Web and App share the same database, as soon as a logged-in user sends a file via the app, it instantly appears on their website dashboard.
*   **Data Stored:** Transfer ID, File Names, Sizes, Expiration Date, Download Count, and Status (Active/Expired).

### 6. High Concurrency Storage Handling (50-60 Simultaneous Users)
*   **The Problem:** Routing 60 heavy file uploads through your backend server will crash it and require massive server costs.
*   **The Best Approach (Pre-signed URLs):**
    1. Client (Web/App) tells the backend: *"I want to upload a 500MB file."*
    2. Backend authenticates the request and asks Backblaze/Wasabi for a temporary direct-upload ticket (Pre-signed S3 URL).
    3. The Client uploads the file **directly** to Backblaze/Wasabi.
    4. Once finished, the Client tells the backend: *"Upload complete."*
*   **Result:** Your backend server does almost zero work, meaning you can handle 1,000+ simultaneous users on a very cheap server.

---

## 3. Step-by-Step Implementation Plan

### Phase 1: Infrastructure & Setup
- [ ] Set up Backblaze B2 / Wasabi buckets with S3 compatibility.
- [ ] Configure Database (PostgreSQL & Redis).
- [ ] Initialize the backend repository (Node.js/Go) and define database schemas (Users, Transfers, Files).

### Phase 2: Core API Development
- [ ] Build the **Upload Strategy**: Implement the S3 Pre-signed URL generation for direct-to-cloud uploads.
- [ ] Build **Guest Mode**: API endpoints to create a transfer and return a shareable URL.
- [ ] Build **Email & OTP Flow**: Integrate an email provider (e.g., Resend or SendGrid) for OTP login.

### Phase 3: Add-ons & History
- [ ] Build the user dashboard endpoints (fetching history, active links, download counts).
- [ ] Integrate email delivery logic for "Send to Email" features (notifying recipients).

### Phase 4: Client Development (Web & App Sync)
- [ ] Build the Next.js / React web interface.
- [ ] Build the React Native / Flutter mobile app.
- [ ] Connect both frontends to the shared REST/GraphQL API to ensure 100% synchronization.

### Phase 5: Testing & Deployment
- [ ] Load testing: Simulate 60 concurrent uploads to ensure the pre-signed URL strategy works perfectly.
- [ ] Deploy Backend to a cloud provider (e.g., Render, Railway, AWS EC2).
- [ ] Deploy Web to Vercel/Netlify, and App to iOS App Store & Google Play.