# 🌀 tokuOS

This repository contains **my personal operating system**, built on top of **[NixOS](https://nixos.org/)** and managed using **flakes** and **[Home Manager](https://nix-community.github.io/home-manager/)**. While it's not a literal operating system, it serves as a fully declarative and reproducible setup that defines my development environments, desktop configuration, tools, and system behavior.

---

## ✨ Features

- 💠 Flake-based modular and reproducible configuration
- 🧠 User environment management via **Home Manager**
- 💻 Actually i'm using COSMIC, but i'm **building my own Hyprland**!
- 🧰 Declarative installation of dev tools, applications for user end, etc.
- 🎨 Personalized UI configs **(WIP)**
- 🔐 Has some Cybersecurity tools in case you need it tho
- 📦 Host-specific system and package configurations, all ordered **(WIP)**
- ✏️ You're free to use my dots as an example config for **Home Manager with Flakes**, it would be an honor :)

---

## 📁 Repository Structure

```bash
.
├── flake.nix              # Main flake entry point
├── flake.lock             # Pinned versions of dependencies
├── hosts/                 # Hosts' NixOS global config 
│   ├── default.nix        # Default config for both users
├── home/                  # User-specific Home Manager configs
│   ├── arusso.nix         # My testing user :)
│   └── agustin.nix        # My main user
└── README.md
