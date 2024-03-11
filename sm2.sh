#! /bin/bash
trap '' 2
while true
do

	clear
	echo " _   _   _   _  "
	echo "|J| |P| |C| |E| "
	echo " -   -   -   -  "
	date +%a,%F---%T
	echo ""
	echo "     					               ===================================================================="
	echo "	  	        						     >>   SHELL MENU <<"
	echo "      					               ===================================================================="
	echo ""
	echo ""
	echo "                                                                                   Anwendungen"
	echo "									           -----------"
	echo ""
	echo ""
	echo " 	                     				 11 = GParted 			12 = JDownloader2      13 = Kdenlive"
	echo ""
	echo "						         14 = Libreoffice       	15 = Lutris            16 = Minecraft"
	echo ""
	echo "						  	 17 = Netzwerk-Settings     	18 = Notepadqq 		19 = OBS"
	echo  ""
	echo ""
	echo "	   - = ShellMenu Teil 1"
	echo ""
	echo "	   + = ShellMenu Teil 3"
	echo ""
	echo "	  ++ = ShellMenu Teil 4"
	echo ""
	echo "	 ___________"
	echo "	t = Terminal"	
	echo ""
	echo " 	T = Thunar"
	echo ""
	echo "										    BASH"
	echo "							  			   ------"
	echo ""
	echo "							  a = Autoclean     	 b = Bashtop		c = Cmatrix"
	echo ""
	echo "							  d = Dieter		 e = Neofetch		f = Temp"
	echo ""
	echo " 							  g = Uhrzeit		 h = HTOP               i = IP-Addresse"
	echo ""
	echo " 							  m = MC	      task = Taskmgr	      sys = Systemmonitor                    		|	u = Update	"
	echo ""
	echo "							sys = Systemmonitor 	 v = Taschenrechner"
	echo ""
	echo "										sd = herunterfahren"
	echo "										     --------------"
	echo "================================="
	echo ""
	echo "	q = Zurück"
	
		echo -e "\n"
echo -e "  		===>> Option auswählen: \c"
		read answer
		case "$answer" in
		11) gparted;;
		12) JDownloader;;
		13) Kdenlive;;
		14) libreoffice;;
		15) lutris;;
		16) /usr/bin/flatpak run --branch=stable --arch=x86_64 --command=minecraft com.mojang.Minecraft;;
		17) nm-connection-editor;;
		18) notepadqq;;
		19) obs;;
		-) cd /home/erhardtux/manjaro/sh && ./sm1.sh;;
		+) cd /home/erhardtux/manjaro/sh && ./sm3.sh;;
		++)cd /home/erhardtux/manjaro/sh && ./sm4.sh;;
		t) terminator;;
		T) thunar;;
		a) sudo pamac remove -o && sudo rm -rf ~/.local/share/Trash/*;;
		b) bashtop;;
		c) cmatrix -a -b -Cred;;
		d) ssh dieter@192.168.0.18;;
		e) neofetch;;
		f) ./temp.sh;;
		g) tty-clock -c -S -s -C1;;
		i) ip addr | grep 'enp38s0';;
		h) htop;;
		m) sudo mc;;
		task) ./taskmgr.sh;;
		sys) ./sys.sh;;
		u) ./update.sh;;
		v) bc -q;;
		sd) sudo shutdown ;;
	q) clear && exit;;
	esac
	read input
done