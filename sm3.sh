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
	echo "	                          			 20 = Pamac        	21 = Photogimp"
	echo ""
	echo " 							 22 = Eneregie         	23 =  MPV         24 = Themes"
	echo ""
	echo " 							 25 = Waterfox	   	26 = WhatsApp	       27 = Fenster-Einstellungen"
	echo ""
	echo ""
	echo "	  -- = ShellMenu Teil 1"
	echo ""
	echo "	   - = ShellMenu Teil 2"
	echo ""
	echo "	   + = ShellMenu Teil 4"
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
		20) pamac-manager;;
		21) /usr/bin/flatpak run --branch=stable --arch=x86_64 --command=gimp-2.10 --file-forwarding org.gimp.GIMP @@u %U @@;;
		22) xfce4-power-manager-settings;;
		23) celluloid;;
		24) xfce4-appearance-settings;;
		25) waterfox;;
		26) whatsapp-for-linux;;
		27) xfwm4-settings;;
		-) ./sm2.sh;;
		--) ./sm1.sh;;
		+) ./sm4.sh;;
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
done
