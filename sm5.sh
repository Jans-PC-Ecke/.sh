#! /bin/bash
trap '' 2
while true
do

	clear
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
	echo "  							 			p = predator"
	echo ""
	echo ""
	echo ""
	echo ""
	echo ""
	echo ""
	echo ""
	echo ""
	echo ""
	echo "	---- = ShellMenu Teil 1"
	echo ""
	echo "	 --- = ShellMenu Teil 2"
	echo ""
	echo "	  -- = ShellMenu Teil 3"
	echo ""
	echo "	   - = ShellMenu Teil 4"
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
		p) ./predator.sh;;
		---) ./sm1.sh;;
		--) ./sm2.sh;;
		-) ./sm3.sh;;
		t) terminator;;
		T) thunar;;
		a) sudo pamac remove -o && sudo rm -rf ~/.local/share/Trash/*;;
		b) bashtop;;
		c) cmatrix -a -b -Cred;;
		d) ssh dieter2@192.168.178.52;;
		e) neofetch;;
		f) ./temp.sh;;
		g) tty-clock -c -S -s -C1;;
		i) ip addr | grep 'wlp0s20f3';;
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