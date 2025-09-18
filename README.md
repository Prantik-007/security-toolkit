# 🔐 Security Toolkit

A simple **Bash-based Security Toolkit** that lets you:

- ✅ Generate strong random passwords  
- 🔒 Encrypt files with GPG  
- 🔓 Decrypt files with GPG  

Perfect for beginners who want to practice Linux scripting and security basics.

---

## 🚀 Features
- Generate 5 random passwords of user-defined length  
- Encrypt any file using **GNU Privacy Guard (GPG)**  
- Decrypt `.gpg` files back to their original form  
- Interactive menu for easy use  

---

## 📦 Requirements
- Linux / macOS terminal (or WSL on Windows)  
- `bash` shell  
- `openssl` (for password generation)  
- `gpg` (for file encryption/decryption)  

Install on Debian/Ubuntu:
```bash
sudo apt update
sudo apt install gnupg openssl -y

