# Ip-tracker
⚠️ Legal Disclaimer  This tool is made for educational and ethical use only. Do not use it on targets without proper permission. Unauthorized scanning may be illegal in your region.  > Developed with ❤️ by Cyber Psycho
# 🌐 IP Toolkit for Termux (Ethical Use Only)

A lightweight and fast Termux-based tool to **lookup IP address information** and **scan open ports** on any target. Made for ethical learning and testing purposes only.

---

## 📦 Features

- ✅ Real-time IP Geolocation (using [ipinfo.io](https://ipinfo.io))
- ✅ Fast Port Scanning with `nmap`
---

## 🚀 Installation

### 1. Install Termux from F-Droid (recommended):
[https://f-droid.org/packages/com.termux/](https://f-droid.org/packages/com.termux/)

### 2. Run these commands in Termux:

```bash
pkg update -y && pkg upgrade -y
pkg install git curl jq nmap -y
git clone https://github.com/Cpsycho/Ip-tracker.git
cd Ip-tracker
chmod +x ip.sh
bash ip.sh
