# 🚀 Strapi Project with Full Automation

This Strapi project is fully automated. Once set up, **every commit to GitHub triggers CI/CD** to build, deploy, and update your application automatically—no manual steps required.

---

## 📦 Prerequisites

Before starting, make sure you have installed:

* [Node.js](https://nodejs.org/) (v18+)
* [npm](https://www.npmjs.com/) or [Yarn](https://yarnpkg.com/)
* [Git](https://git-scm.com/)

Optional (for database):

* PostgreSQL, MySQL, MariaDB, or SQLite

---

## ⚡ Setup & Automation

Follow these steps to set up the project and enable full automation:

### 1. Clone the repository

```bash
git clone https://github.com/vaishnavitandekar/strapi-fargate-automation.git
cd strapi-fargate-automation
```

### 2. Create your GitHub repository

1. Go to GitHub and create a new repository
2. Add your new repository as a remote (if needed):

```bash
git remote add origin <your-new-repo-url>
```

### 3. Add GitHub Actions Secrets

Go to **Settings → Secrets and variables → Actions → New repository secret** and add the following:

| Secret Name                  | Purpose                           |
| ---------------------------- | --------------------------------- |
| `AWS_ACCESS_KEY_ID`          | AWS access key for deployment     |
| `AWS_SECRET_ACCESS_KEY`      | AWS secret key for deployment     |
| `TF_VAR_ADMIN_JWT_SECRET`    | Strapi admin JWT secret           |
| `TF_VAR_API_TOKEN_SALT`      | Strapi API token salt             |
| `TF_VAR_APP_KEYS`            | Strapi app keys                   |
| `TF_VAR_DB_PASSWORD`         | Database password                 |
| `TF_VAR_ENCRYPTION_KEY`      | Encryption key for sensitive data |
| `TF_VAR_JWT_SECRET`          | JWT secret for Strapi             |
| `TF_VAR_TRANSFER_TOKEN_SALT` | Token salt for Strapi API         |

> ⚠️ Make sure you copy the **exact names**. These are referenced in the workflow.

### 4. Push code to GitHub

```bash
git add .
git commit -m "Initial commit"
git push origin main
```

---

## ⚙️ Fully Automated Workflow

After pushing your code:

1. **CI/CD workflow runs automatically** (no manual clicks)
2. Dependencies are installed
3. Admin panel is built
4. Docker image is created and pushed (if configured)
5. Deployment is updated on your server (AWS ECS, Strapi Cloud, or any platform)

> Every future commit triggers the same workflow automatically.

---

## 🏃‍♂️ Running Locally (Optional)

To run the project locally:

```bash
npm install
npm run develop   # Development mode with autoReload
npm run start     # Production mode
```

Visit: [http://localhost:1337/admin](http://localhost:1337/admin) to access the admin panel.

---

## 📚 Learn More

* [Strapi Documentation](https://docs.strapi.io)
* [Strapi Resource Center](https://strapi.io/resource-center)
* [Strapi Tutorials](https://strapi.io/tutorials)

---

## ✨ Tips

* Keep all secrets safe. Do **not commit `.env` files** to GitHub.
* Once CI/CD is configured, **no manual deployment is needed**.
* Use logging and monitoring for production to track performance and errors.

---

