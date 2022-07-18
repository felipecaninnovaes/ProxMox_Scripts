mkdir temp
cd temp
apt update && sudo apt upgrade -y && sudo apt autoremove -y
apt --fix-broken install
apt-get install jq wget curl udisks2 libglib2.0-bin network-manager dbus -y
curl -fsSL get.docker.com | sh
export PATH=$PATH:/usr/local/sbin:/usr/sbin:/sbin
wget https://github.com/home-assistant/os-agent/releases/download/1.2.2/os-agent_1.2.2_linux_x86_64.deb
wget https://github.com/home-assistant/supervised-installer/releases/latest/download/homeassistant-supervised.deb
dpkg -i os-agent_1.2.2_linux_x86_64.deb
dpkg -i homeassistant-supervised.deb
