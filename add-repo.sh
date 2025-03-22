echo -e "\e[32mInstalling depends..."
apt install gnupg curl x11-repo -y > /dev/null 2>&1

echo adding sources Black-Venom repo
sleep 2
if [[ ! -d $PREFIX/etc/apt/sources.list.d ]]; then
  mkdir -p $PREFIX/etc/apt/sources.list.d > /dev/null 2>&1
fi
echo "deb [trusted=yes arch=all] https://raw.githubusercontent.com/prince4you/Noob-Hackers/refs/heads/main exploit main" > $PREFIX/etc/apt/sources.list.d/sunil.list

echo -e "\e[32mAdding keys for Black-Venom repo\e[0m"
curl -sL https://github.com/prince4you/Noob-Hackers/blob/main/noob-hacker.key | apt-key add
sleep 2

mv $PREFIX/etc/apt/trusted.gpg $PREFIX/etc/apt/trusted.gpg.d/Sunil.gpg > /dev/null 2>&1

printf "\n
Black-Venom Repo installed....
updating repositories...
"
apt update && apt upgrade -y








