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
	echo "  							 t-0 = Timeshift  	t-1 => --list          t-2 => --create   t-3 => --delete"
	echo ""
	echo ""
	echo ""
	echo ""
	echo ""
	echo ""
	echo ""
	echo ""
	echo ""
	echo "	 --- = ShellMenu Teil 1"
	echo ""
	echo "	  -- = ShellMenu Teil 2"
	echo ""
	echo "	   - = ShellMenu Teil 3"
	echo""
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
		20) obs;;
		t-0) timeshift-launcher;;	
		t-1) sudo timeshift --list;;
		t-2) sudo timeshift --create;;
		t-3) sudo timeshift --delete;;
		---) ./sm1.sh;;
		--) ./sm2.sh;;
		-) ./sm3.sh;;
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