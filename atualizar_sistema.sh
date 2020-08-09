TIME=1
clear
while true;do
echo " "
echo "WELCOME TO UBUNTU SETTINGS!"
echo " "
echo "Choose an option below to get started!
      
      1 - Check the system repository
      2 - Show system updates
      3 - Install system updates
      4 - Clean the system
      5 - Remove unnecessary packages
      0 - Exit the system"
echo " "
echo -n "Chosen option: "
read option
case $option in
	1) 
		echo Checking the system for updates ...
		sleep $TIME
		apt update
		;;
	2)
		echo Showing system updates ...
		sleep $TIME
		apt list --upgradable
		;;
	3)
		echo Installing system updates ...
		sleep $TIME
		apt upgrade -y
		;;
	4)
		echo Cleaning the system ...
		apt clean
		apt autoclean
		;;
	5) 
		echo Removing unnecessary packages from the system ...
		sleep $TIME
		apt autoremove -y
		;;
	0)
		echo Exiting the system ...
		sleep $TIME
		exit 0
		;;
		
	*)
		echo Invalid option, try again!
		;;
esac
done