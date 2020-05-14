#!/bin/bash
clear

BLACK='\e[30m'
RED='\e[31m'
GREEN='\e[32m'
YELLOW='\e[33m'
BLUE='\e[34m'
PURPLE='\e[35m'
CYAN='\e[36m'
WHITE='\e[37m'
NC='\e[0m'
echo""
echo -e "${RED}   /\     ____  _    _ /\   _     _          "
echo " | |   | | /  \  / _____) |  / /  \ | |   | |         "
echo " | |__ | |/ /\ \| /     | | / / /\ \| |   | |         "
echo " |  DIMO | /__\ | |     | |< | /__\ | |   | |         "
echo " | |   | | |  | | \_____| | \ \|  | | |__ | |__       "
echo " |_|   |_|_|  |_|\______)_|  \_|  |_|_____\_____\     "
echo -e "${RED}                                                      ~ HACKALL by ||DIMO|| ${NC}"
echo ""
echo -e "${YELLOW} mail: eldimo5991@gmail.com | facebook.com/DIMO5991 | github.com/dimo5991 ${NC} "
echo ""
echo "---------------------------------------------------------------------------------------"
echo ""
echo -e "${RED}[!] This Tool Must Run As ROOT [!]${NC}"
echo ""
echo -e "${CYAN}[>] Press ENTER to Install HACKALL, CTRL+C to Abort.${NC}"
read INPUT
echo ""

if [ "$PREFIX" = "/data/data/com.termux/files/usr" ]; then
    INSTALL_DIR="$PREFIX/usr/share/doc/hackall"
    BIN_DIR="$PREFIX/usr/bin/"
    pkg install -y git python2
else
    INSTALL_DIR="/usr/share/doc/hackall"
    BIN_DIR="/usr/bin/"
fi

echo "[✔] Checking directories...";
if [ -d "$INSTALL_DIR" ]; then
    echo "[!] A Directory hackall Was Found.. Do You Want To Replace It ? [y/n]:" ;
    read mama
    if [ "$mama" = "y" ]; then
        rm -R "$INSTALL_DIR"
    else
        exit
    fi
fi

echo "[✔] Installing ...";
echo "";
git clone https://github.com/thehackingsage/hackall.git "$INSTALL_DIR";
echo "#!/bin/bash
python $INSTALL_DIR/hackall.py" '${1+"$@"}' > hackall;
chmod +x hackall;
sudo cp hackall /usr/bin/;
rm hackall;


if [ -d "$INSTALL_DIR" ] ;
then
    echo "";
    echo "[✔] Successfuly Installed !!! [✔]";
    echo "";
    echo "[✔]========================================================================[✔]";
    echo "[✔] ✔✔✔ All Is Done!! you can execute tool by typing hackall !! ✔✔✔ [✔]";
    echo "[✔]========================================================================[✔]";
    echo "";
else
    echo "[✘] Installation Failed !!! [✘]";
    exit
fi
