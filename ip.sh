#!/data/data/com.termux/files/usr/bin/bash

# Colors
GREEN="\033[1;32m"
YELLOW="\033[1;33m"
CYAN="\033[1;36m"
RED="\033[1;31m"
RESET="\033[0m"

# Banner
banner() {
  clear
  echo -e "${CYAN}"
  echo "░█▄─░█ █▀▀ ▀▀█▀▀ "
  echo "░█░█░█ █▀▀ ──█── "
  echo "░█──▀█ ▀▀▀ ──▀── "
  echo ""
  echo "█▀▀ █▀▀ █▀▀█ █▀▀▄ █▀▀▄ █▀▀ █▀▀█"
  echo "▀▀█ █── █▄▄█ █──█ █──█ █▀▀ █▄▄▀"
  echo "▀▀▀ ▀▀▀ ▀──▀ ▀──▀ ▀──▀ ▀▀▀ ▀─▀▀"
  echo -e "${GREEN}ᴮʸ ᶜʸᵇᵉʳ ᵖˢʸᶜʰᵒ${RESET}"
  echo ""
}

# Dependencies
install_deps() {
  pkg update -y && pkg install nmap curl jq -y
}

# Lookup IP
lookup_ip() {
  echo -ne "${YELLOW}Enter IP address to lookup: ${RESET}"
  read ip
  if [[ -z "$ip" ]]; then
    echo -e "${RED}No IP provided!${RESET}"
    return
  fi
  echo -e "${GREEN}[*] Getting location info for $ip ...${RESET}"
  curl -s https://ipinfo.io/$ip | jq .
}

# Scan ports
port_scan() {
  echo -ne "${YELLOW}Enter IP or domain: ${RESET}"
  read target
  nmap -Pn "$target"
}

# Menu
menu() {
  banner
  install_deps
  while true; do
    echo -e "${CYAN}\nChoose an option:${RESET}"
    echo -e "${GREEN}1)${RESET} Lookup IP Location"
    echo -e "${GREEN}2)${RESET} Port Scan"
    echo -e "${GREEN}3)${RESET} Exit"
    echo -ne "${YELLOW}Choice: ${RESET}"
    read choice
    case $choice in
      1) lookup_ip ;;
      2) port_scan ;;
      3) echo -e "${GREEN}Goodbye!${RESET}"; exit ;;
      *) echo -e "${RED}Invalid! Try again.${RESET}" ;;
    esac
  done
}

menu
