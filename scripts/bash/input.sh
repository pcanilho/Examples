
function menu(){
	echo; echo;
	echo "##########################################";
	echo "############### INPUT TEST ###############";
	echo "##########################################";
	echo "#### COMMANDS                         ####";
	echo "####                                  ####";
	echo "#### 1)Help                           ####";
	echo "#### 2)User                           ####";
	echo "#### 3)Exit                           ####";
	echo "##########################################";
}

menu foo bar;

function help_menu(){
	echo "Coming soon.";
}

while true; do
	read -p "input> " yn
	case $yn in
		[1]* ) help_menu foo bar;;
		[2]* ) whoami;;
		[3]* ) exit;;
		* ) echo "Wrong input supplied.";;
	esac
done
