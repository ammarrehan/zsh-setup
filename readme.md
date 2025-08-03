# 🐚 ZSH Setup

This repository contains a personal ZSH environment configuration with plugins and themes, tailored for systems where `sudo` access may not be available (e.g., remote servers or VMs).

## 🚀 Features

- Uses [Oh My Zsh](https://ohmyz.sh) (installed locally)
- Includes popular plugins: 
  - `zsh-autosuggestions`
  - `zsh-syntax-highlighting`
- Custom aliases and functions for Hadoop (`hfs`) and more
- Minimal and readable `.zshrc`

## 📁 File Structure

```bash
zsh-setup/
├── install.sh      # Setup script
├── .zshrc          # Main ZSH config
└── README.md       # This file
```

---

## 📦 Installation

> ⚠️ No `sudo` required. All steps are user-level.

### 1. Clone this repository

```bash
cd ~
git clone https://github.com/ammarrehan/zsh-setup.git
cd zsh-setup
```

### **2. Run the install script**

```bash
bash install.sh
```

This will:

- Download and install Oh My Zsh locally in \~/.oh-my-zsh
- Copy .zshrc from this repo to your home directory (with symlink)
- Clone necessary plugins to \~/.oh-my-zsh/custom/plugins/

## **🔄 Updating**

To update your ZSH config on future machines:

```bash
cd ~/zsh-setup
git fetch
git push
```

## 
