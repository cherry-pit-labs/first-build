# Appendix: Password Management

As a developer, you'll accumulate accounts, API keys, SSH passphrases, and tokens. Trying to remember all of these (or reusing the same password everywhere) is a security risk. A password manager solves this by generating strong, unique passwords for each account and storing them securely behind one master password.

This guide uses **Bitwarden** as an example because it's free, open-source, and works across all platforms. Other good options include 1Password and KeePassXC. The concepts apply to any password manager.

---

## Why Use a Password Manager?

- **Unique passwords for every account.** If one account gets breached, the rest stay safe.
- **Strong passwords you don't need to memorize.** The password manager generates long, random passwords that are nearly impossible to guess.
- **Secure storage for secrets.** SSH passphrases, API keys, and tokens can be saved as secure notes.
- **Autofill.** Browser extensions fill in login forms automatically, saving time and reducing phishing risk (autofill only works on the real website, not a lookalike).

## Setting Up Bitwarden

### 1. Create an account

Go to **[bitwarden.com](https://bitwarden.com/)** and click **Get Started**. The free plan covers everything you need.

Choose a **strong master password**. This is the one password you need to memorize. Make it long and memorable. A passphrase works well (for example, "correct horse battery staple" or a sentence that means something to you).

> **Important:** If you forget your master password, Bitwarden cannot recover it. Write it down and store it somewhere physically safe (not on your computer) until you've memorized it.

### 2. Install the browser extension

Install the Bitwarden extension for your browser:
- **Chrome/Edge:** [Chrome Web Store](https://chrome.google.com/webstore/detail/bitwarden/nngceckbapebfimnlniiiahkandclblb)
- **Firefox:** [Firefox Add-ons](https://addons.mozilla.org/en-US/firefox/addon/bitwarden-password-manager/)
- **Safari:** Available in the Mac App Store

The browser extension autofills passwords on websites and can generate strong passwords when you create new accounts.

### 3. Install the desktop app (optional)

Download from [bitwarden.com/download](https://bitwarden.com/download/). The desktop app is useful for managing passwords outside the browser and for storing secure notes (like SSH passphrases).

## Best Practices

### Passwords
- **Never reuse passwords across accounts.** Let the password manager generate a unique one for each site.
- **Use the password generator.** When creating a new account, use Bitwarden's built-in generator (at least 16 characters, mixed case, numbers, and symbols).
- **Enable two-factor authentication (2FA)** on important accounts, especially GitHub, your email, and Bitwarden itself. 2FA requires a second verification step when logging in, usually a code from an authenticator app like Google Authenticator or Authy. **Do this now for GitHub** at [github.com/settings/security](https://github.com/settings/security). Without 2FA, anyone who learns your password can access your code.

### Storing Developer Secrets
- **SSH passphrases:** Save as a secure note in Bitwarden. You'll need this when cloning repos or pushing code.
- **API keys and tokens:** Save as secure notes with clear labels (e.g., "GitHub SSH Passphrase" or "Discord Bot Token").
- **Never store secrets in code files.** Use environment variables and `.env` files instead (Claude Code will teach you this).

### What to Store in Your Password Manager

| Secret | Where to Store |
|--------|---------------|
| GitHub password | Bitwarden login entry |
| Anthropic/Claude password | Bitwarden login entry |
| SSH passphrase | Bitwarden secure note |
| API keys and tokens | Bitwarden secure note |
| Master password | **Nowhere digital.** Memorize it. Write it down physically if needed. |

## 🔒 Security Note

Your password manager is the keys to your kingdom. Protect it accordingly:

- **Use a strong, unique master password** that you don't use anywhere else
- **Enable two-factor authentication** on your Bitwarden account
- **Lock your vault** when you're not using it (Bitwarden can auto-lock after a timeout)
- **Keep the app and extension updated** so you get security patches

---

← [Back to Home](Home)
