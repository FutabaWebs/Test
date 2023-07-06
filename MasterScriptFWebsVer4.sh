#MasterScriptFWebsVer4 -> FINAL VERSION

#This is the main function of the program that will overall run the entire script. 
main()
{
	
	clear
	
	read -p "Are online? Connect first then hit enter!" p

	clear

	while true
		do 
			echo "Would you like to update the system (Y/n?) If you would like to see the main banner for the program you need to make sure it's updated so the banner will show and install itself!"
			echo "" 
			
			read -p "" Update
			
			if [ $Update = "Y" ] || [ $Update = "y" ]; then 
			
				apt-get update -y 
				apt-get install jp2a -y #This is going to help load the main banner for my program overall

				cd /home/kali/Downloads
				git clone https://github.com/FutabaWebs/Futaba_Webs_Banner.git 

				break
			
			elif [ $Update = "N" ] || [ $Update = "n" ]; then 
			
				apt-get install jp2a -y #This is going to help load the main banner for my program overall

				cd /home/kali/Downloads
				git clone https://github.com/FutabaWebs/Futaba_Webs_Banner.git 

				
				clear
				
				break
			
			fi
		
		done
		

  while true  
  do 

	jp2a /home/kali/Downloads/Futaba_Webs_Banner/heros.png #This is going to load up our main banner so it shows to the end user
	echo ""
	echo ""
	echo ""

  	echo "What would you like to install?"
  	echo ""
  	
  	echo " Please note you might need more disk space to install everything. Recommend options: 1, 2, 3, 4, 6 to install first" 
  	echo ""
  	
  	echo "NEWS: -> You can now run tools from the program, and it will auto configure and install what is needed to run it for you! ^_^"
  	echo "NEWS: -> There is now a reocommeded install option that will install all the recommended options in order"
  	echo "NEWS: -> Tor option will SOON check if you are root, and will prevent you from installing if not. This is to prevent corrupted installs"
  	echo "NEWS: -> The program now remembers if you've selected Y/n to a tool run in option 9"
  	echo "NEWS: -> Some of the input has been made a bit cleaner and easier to tell where the cursor is for whenn you need to provide input in the program"
  	echo "NEWS: -> The program now has less hick ups when performing installs, preventing the end user from having to enter yes too frequently" 
  	echo "NEWS: -> The program is now able to install any and all forms of python modules via the pip installer for easy python3 programming setup"
	echo ""
	echo "NEWS: -> The following tools have been added to the program: jp2a, nodejs, inviteflood, dnsspoof, maltego, p0f, amap, rkhunter, lynis, cge.pl,"
	echo "oscaner, sfuzz, zzuf, hostapd, wifiphisher, wifi-honey, redfang, bluelog, parsero, rtgen, ltrace, strace"
	echo ""
  	
  	echo "0 -> Exit"
  	echo "1 -> Basic Install"
  	echo "2 -> Tor Browser Install (YOU NEED TO BE NON-ROOT TO RUN THIS OPTION. EXIT THE PROGRAM AND RUN IT THAT WAY)"
  	echo "3 -> VSCode Install"
  	echo "4 -> Telegram Install"
  	echo "5 -> WordPress CTF Install"
  	echo "6 -> Bettercap and Aircrack-ng Driver Installs"
  	echo "7 -> General Insall" 
  	echo "8 -> Advanced ToolBelt Install"
  	echo "9 -> Run Tools (RUN OPTION 8 BEFORE RUNNING THIS OR IT WON'T WORK)"
  	echo "10 -> Recommended Install (Installs Options 1, 3, 4, and 6) HIGHLY RECOMMEND THIS OPTION FOR QUICK INSTALL AND PROGRESS"  
  	echo "11 -> Python Modules (Installs a set of python3 programming modules and libraries best suited for black/grahat python3 programming)"
  
  	echo "Enter in your Selection now"
  	echo ""
  	
  	read -p "" Selection
  
  	
	
####################################### OPTION 0 Exit
	if [ $Selection = "0" ]; then 
	
		echo "Exiting the program now"
		clear
		exit
		
		


####################################### OPTION 1 Basic Install
	elif [ $Selection = "1" ]; then 
		
		clear
		
		while true
		do 
			echo "Would you like to upgrade the system Y/n?"
			echo "" 
			
			read -p "" Upgrade
			
			if [ $Upgrade = "Y" ] || [ $Upgrade = "y" ]; then 
			
				apt-get upgrade -y 
				break
			
			elif [ $Upgrade = "N" ] || [ $Upgrade = "n" ]; then 
				
				clear
				
				break
			
			fi
		
		done
		
		
		apt-get install httrack -y
		apt-get install gobuster -y
		apt-get install gdb-minimal -y 
		apt-get install bc -y
		apt-get install bluetooth -y
		apt-get install dkms -y
		apt-get install bettercap -y
		apt-get install bluesnarfer -y
		apt-get install blueranger -y
		apt-get install btscanner -y
		apt-get install emailharvester -y 
		apt-get install sendmail -y
		apt-get install default-jre -y 
		apt-get install openjdk-17-jdk -y
		
		mkdir -p /dev/bluetooth/rfcomm
		mknod -m 666 /dev/bluetooth/rfcomm/0 c 216 0
		mknod --mode=666 /dev/rfcomm0 c 216 0 
		service bluetooth start
		
		
		apt-get install tor -y

		apt-get install seahorse -y #This is going to install a password manager and updater in our linux system
		apt-get install nodejs -y #This is going to allow us to work with nodejs programs
		apt-get install inviteflood -y #This is going to allow us to flood the SIP rpotocol
		apt-get install dnsspoof -y #This is going to allow us to sniff out network traffic data as the main gateway 
		apt-get install maltego -y #This allow us to utilize various PI search queires through a main GUI interface
		apt-get install p0f -y  #This is used for passive recon against web server applications to stay more anonymous than nmap
		apt-get install amap -y #This is a more service scanning oriented to to discover the pinpoint services that are running on a system which might come up a bit vague compared to nmap
		apt-get install rkhunter -y #This allow us to check if ther ehas been a rootkit installed on the system
		apt-get install lynis -y #This is used to run a manual vulnerabiltiy chekc against either a local system or a rmeoe system via an executable we can pipe over to the target remotely  
		apt-get install cisco-global-exploiter -y #This is used to check cisco devices we locate on a etwork for any and all types of vulnerabilties 
		apt-get install oscanner -y # This allow us to scan against a target system and check whether or not it is running an oracle based database on it as well as if the databse runing on it has any vulnerbailtiies of i'ts own
		apt-get install sfuzz -y #This allows us to scan for bugs that might exist in a program
		apt-get install zzuf -y #This is used n order to test and pipe input for fuzzing into programs for bug hunting/applicaiton penetration testing
		apt-get install hostapd -y #This allows us to create out own access point on our NIC card that operates wirelessly
		apt-get install wifiphisher -y #This is going to allow us to set up jammming exploits on access points
		apt-get install wifi-honey -y #This is a network monitoring tool for a honey pot in order to track attack patterns on a network, as well as monitor client activity on the network
		apt-get install redfang -y #This allows us to blueborne bluetooth devices even if they aren't in discovery mode
		apt-get install bluelog -y #This is going to allow us to both scan for bluetooth devices, as well as keep a genral log of our mainfindings automatically apt-get install parsero #This program is used to fetch the robot.txt file from a web application
		apt-get install rtgen -y #This allows us to generate rainbow tabels for faster password cracking (REQUIRES DISK USAGE/SPEED/SPACE)
		apt-get install ltrace -y #This is goinng to allow us to trace the function calls on a binary level within other programs THIS IS FOR LIBRARY FUNCTION CALLS  WTHIN THE PROGRAM
		apt-get install strace -y #This is goinng to allow us to trace the function calls on a binary level within other programs THIS IS FOR SYSTEM FUNCTION CALLS  WTHIN THE PROGRAM

		#This is going to check and fix any and all broken installs on the system
		apt --fix-broken install -y

		clear
		
		while true
		do 
			
			echo "Would you like to run the tor proxy? Y/n?"
			echo "" 
			
			read -p "" torproxy
			
			if [ $torproxy = "Y" ] || [ $torproxy = "y" ]; then 
			
				echo "READ THESE INSTRUCTIONS VERY CAREFULLY IF YOU WISH TO RUN TOR PROXY CHAINS"
				echo ""
			
				echo "Open another terminal session via ctrl+shift+n"
				echo ""
		
				echo "While you're in the other shell run the following command -> nano /etc/proxychains4.conf"
				echo ""
		
				echo "While the fiile is open, scroll down until you find a row a text with (dynamic_chain), and remove the # sign next to it to remove the comment"
				echo ""
		
				echo "Now look for the (static_chain) line of text and add a # symbol next to it to comment it out"
				echo ""
						
				echo "Now scroll down to the very end of the file where a line says (socks4) On the line bellow it add another called (socks5 127.0.0.1 9050) to configure tor"
				echo ""
		
				echo "Hit Ctrl+O, then hit enter, then hit Ctrl-X to close the file"
				echo ""
				
				echo "After Tor Service is setup, Run the command (proxychains) along with any network servie: browser, nmap, etc, and it will route through tor service"
				echo "EX ->: proxychains nmap -A google.com" 
				echo "EX2 ->: proxychains firefox dnsleaktest.com (This site is extremely good to see if tor services is changing your IP address)"
				echo "" 
				
				echo "Hit enter when you've done all this, and the tor service will execute"
				echo ""
				
				read -p "" p
				service tor start 
				
				break
			
			elif [ $torproxy = "N" ] || [ $torproxy = "n" ]; then 
			
				break
			
			fi
		
		done
		
		clear
		
		echo "All basic installations are complete ^_^ Hit Enter"
		
		read -p "" p

	
	
	
	
####################################### OPTION 2 Tor Browser Inatall 
	elif [ $Selection = "2" ]; then 
	
		clear 
		
		echo "YOU NEED TO RUN THIS AS NON-ROOT USER ONLY! IF YOU ARE ROOT, HIT CTRL+SHIFT+N to spawn a new shell."
		echo "Once the new shell is open, move to /Desktop and then run the program again the same way with ./filename"
		echo "If you are NOT ROOT, then please enter 0 in order to continue the install, exit if you simply wish to exit the program"
		echo "Any other option will simply return you to the main menu"
		echo "Please enter your selection now" 
		echo ""
		read -p "" AreYouRoot
		
		#The program needs to pipe the username into a variable to double check if the end user is running the program as a non-root user
		if [ $AreYouRoot = "0" ]; then 
		
			cd /home/kali/Downloads
			wget https://www.torproject.org/dist/torbrowser/12.0.4/tor-browser-linux64-12.0.4_ALL.tar.xz --no-check-certificate 
			xz -df tor*
			tar -xvf tor*
			mv tor-browser /home/kali/Documents
			cd /home/kali/Documents
			cd tor-browser
			./start-tor-browser.desktop --register-app
			
			read -p "Tor is now registered as an applicaion on the system. Hit Enter to proceed ^_^"
			clear	
			
		
		elif [ $AreYouRoot = "exit" ]; then 
		
			exit
		
		else
			main
		
		fi
	

	
####################################### OPTION 3 VSCode Install 
	elif [ $Selection = "3" ]; then 
	
		clear 
		
		echo "Hover over to this link here to download it -> https://code.visualstudio.com/docs/?dv=linux64_deb"
		echo ""
		
		echo "Hit enter once you've done so and it's downloaded ^_^"
		echo ""
		
		read -p "" p
		
		
		cd /home/kali/Downloads
		dpkg -i code*
	
		echo "VsCode is now a destkop executable that can be searched from the start menu."
		echo "To run it in the terminal run it as NON-ROOT user, and enter -> code "
		
	
####################################### OPTION 4 Telegram Install 
	elif [ $Selection = "4" ]; then 
	
		clear 
		
		echo "Hover over to this link here to download it -> https://telegram.org/dl/desktop/linux"
		echo ""
				
		echo "If you want to continue the script after telegram executes simply close Telegram manually. The script will pick up where it left off from"
		echo "Hit enter when you have read this and it's downloaded ^_^"
		
		read -p "" p
		
		cd /home/kali/Downloads
		xz -df tsetup*
		tar -xvf tsetup*
		cd Telegram
		chmod +rwx Telegram
		./Telegram --register-app
		echo "Telegram is now a destkop executable that can be searched from the start menu"	
	
	
	
	
####################################### OPTION 5 WordPress Install
	elif [ $Selection = "5" ]; then 
	
		clear
		
		cd /home/kali/Downloads && wget https://sourceforge.net/projects/xampp/files/XAMPP%20Linux/8.0.25/xampp-linux-x64-8.0.25-0-installer.run --no-check-certificate 
		git clone https://github.com/FutabaWebs/WordPressCTF
		chmod +rwx xampp*
		echo ""

		read -p "Files installed.... Hit enter"  p
		clear
		
		echo "Running xammpp now. Close the application when finished to proceed"

		./xampp*

		cd /home/kali/Downloads/WordPressCTF && unzip cybersec && mv cybersec /opt/lampp/htdocs
		cd /opt/lampp && ./xampp start 

		echo ""
		echo "Server initialized...."
		echo ""

		echo "Run over to this link here -> http://localhost/phpmyadmin"
		echo "Watch this video along side it -> https://drive.google.com/file/d/1MQ0fZJhaG-UgrqkICkYWKDDAx5UeZb3y/view?usp=share_link"
		echo ""

		read -p "Hit enter once you've set all this up" p
		clear

		echo "Run over to the main server site -> http://localhost/cybersec/"
		read -p "INsTaLl CoMpLeTe ^_^ HIt enter to close the program!" p



	
	
	
####################################### OPTION 6 Bettecap and Aircrack-ng Driver Installs 
	
	elif [ $Selection = "6" ]; then 
	
		clear 
		
		cd /home/kali/Downloads
		
		apt install golang git build-essential libpcap-dev libusb-1.0-0-dev libnetfilter-queue-dev -y
		git clone https://github.com/bettercap/bettercap.git
		cd bettercap
		make build
		sudo make install
		cd ..
		git clone https://github.com/bettercap/caplets.git
		cd caplets
		make install
		
		clear
		 
		cd /home/kali/Downloads
		git clone https://github.com/morrownr/8812au-20210629 
		cd /home/kali/Downloads/8812au-20210629
		chmod +rwx dkms.conf dkms-make.sh edit-options.sh Kconfig 8812au.conf install-driver.sh remove-driver.sh 
		
		clear
		
		echo "If the prompts give you the option to hit either y/n responses make sure to ALWAYS HIT NO. Hit Enter if you FULLY understood this"
		read -p "" p
		
		./remove-driver.sh
		./install-driver.sh
	
	
	
####################################### OPTION 7 General Install
	
	elif [ $Selection = "7" ]; then 
	
	
		################## General Install 
		clear
		
		apt-get update -y 
		
		clear
		
		while true
		do 
			echo "Would you like to upgrade the system Y/n?"
			echo "" 
			
			read -p "" Upgrade
			
			if [ $Upgrade = "Y" ] || [ $Upgrade = "y" ]; then 
			
				apt-get upgrade -y 
				break
			
			elif [ $Upgrade = "N" ] || [ $Upgrade = "n" ]; then 
			
				break
			
			fi
		
		done
		
		
		apt-get install httrack -y
		apt-get install gobuster -y
		apt-get install gdb-minimal -y 
		apt-get install bc -y
		apt-get install bluetooth -y
		apt-get install dkms -y
		apt-get install bettercap -y
		apt-get install bluesnarfer -y
		apt-get install blueranger -y
		apt-get install btscanner -y
		apt-get install emailharvester -y 
		apt-get install sendmail -y
		apt --fix-broken install -y
		apt-get install default-jre -y 
		apt-get install openjdk-17-jdk -y
		
		mkdir -p /dev/bluetooth/rfcomm
		mknod -m 666 /dev/bluetooth/rfcomm/0 c 216 0
		mknod --mode=666 /dev/rfcomm0 c 216 0 
		service bluetooth start
		
		
		apt-get install tor -y
		
		clear
		
		while true
		do 
			
			echo "Would you like to run the tor proxy? Y/n?"
			echo "" 
			
			read -p "" torproxy
			
			if [ $torproxy = "Y" ] || [ $torproxy = "y" ]; then 
			
				echo "READ THESE INSTRUCTIONS VERY CAREFULLY IF YOU WISH TO RUN TOR PROXY CHAINS"
				echo ""
			
				echo "Open another terminal session via ctrl+shift+n"
				echo ""
		
				echo "While you're in the other shell run the following command -> nano /etc/proxychains4.conf"
				echo ""
		
				echo "While the fiile is open, scroll down until you find a row a text with (dynamic_chain), and remove the # sign next to it to remove the comment"
				echo ""
		
				echo "Now look for the (static_chain) line of text and add a # symbol next to it to comment it out"
				echo ""
						
				echo "Now scroll down to the very end of the file where a line says (socks4) On the line bellow it add another called (socks5 127.0.0.1 9050) to configure tor"
				echo ""
		
				echo "Hit Ctrl+O, then hit enter, then hit Ctrl-X to close the file"
				echo ""
				
				echo "After Tor Service is setup, Run the command (proxychains) along with any network servie: browser, nmap, etc, and it will route through tor service"
				echo "EX ->: proxychains nmap -A google.com" 
				echo "EX2 ->: proxychains firefox dnsleaktest.com (This site is extremely good to see if tor services is changing your IP address)"
				echo "" 
				
				echo "Hit enter when you've done all this, and the tor service will execute"
				echo ""
				
				read -p "" p
				service tor start 
				
				break
			
			elif [ $torproxy = "N" ] || [ $torproxy = "n" ]; then 
			
				break
			
			fi
		
		done
		
		clear
		
		echo "All basic installations are complete ^_^ Hit Enter"
		
		read -p "" p

		
		################## VSCode Install
		clear 
		
		echo "Hover over to this link here to download it -> https://code.visualstudio.com/docs/?dv=linux64_deb"
		echo ""
		
		echo "Hit enter once you've done so and it's downloaded ^_^"
		echo ""
		
		read -p "" p
		
		cd /home/kali/Downloads
		dpkg -i code*
		
		echo "VsCode is now a destkop executable that can be searched from the start menu."
		echo "To run it in the terminal run it as NON-ROOT user, and enter -> code "
		
		################## Telegram Install
		clear 
		
		echo "Hover over to this link here to download it -> https://telegram.org/dl/desktop/linux"
		echo ""
				
		echo "If you want to continue the script after telegram executes simply close Telegram manually. The script will pick up where it left off from"
		echo "Hit enter when you have read this and it's downloaded ^_^"
		
		read -p "" p
		
		cd /home/kali/Downloads
		xz -df tsetup*
		tar -xvf tsetup*
		cd Telegram
		chmod +rwx Telegram
		./Telegram --register-app
		
		echo "Telegram is now a destkop executable that can be searched from the start menu"	
			
		
		
		
		
		################## WordPressCTF Install
		elif [ $Selection = "5" ]; then 
	
		clear
		
		cd /home/kali/Downloads && wget https://sourceforge.net/projects/xampp/files/XAMPP%20Linux/8.0.25/xampp-linux-x64-8.0.25-0-installer.run --no-check-certificate 
		git clone https://github.com/FutabaWebs/WordPressCTF
		chmod +rwx xampp*
		echo ""

		read -p "Files installed.... Hit enter"  p
		clear
		
		echo "Running xammpp now. Close the application when finished to proceed"

		./xampp*

		cd /home/kali/Downloads/WordPressCTF && unzip cybersec && mv cybersec /opt/lampp/htdocs
		cd /opt/lampp && ./xampp start 

		echo ""
		echo "Server initialized...."
		echo ""

		echo "Run over to this link here -> http://localhost/phpmyadmin"
		echo "Watch this video along side it -> https://drive.google.com/file/d/1MQ0fZJhaG-UgrqkICkYWKDDAx5UeZb3y/view?usp=share_link"
		echo ""

		read -p "Hit enter once you've set all this up" p
		clear

		echo "Run over to the main server site -> http://localhost/cybersec/"
		read -p "INsTaLl CoMpLeTe ^_^ HIt enter to close the program!" p
		
		
		
		
		
		
		################# Bettercap and Aircrack-ng Drivers install
		clear 
		
		cd /home/kali/Downloads
		
		apt install golang git build-essential libpcap-dev libusb-1.0-0-dev libnetfilter-queue-dev -y
		git clone https://github.com/bettercap/bettercap.git
		cd bettercap
		make build
		sudo make install
		cd ..
		git clone https://github.com/bettercap/caplets.git
		cd caplets
		make install
		
		clear
		 
		cd /home/kali/Downloads
		git clone https://github.com/morrownr/8812au-20210629 
		cd /home/kali/Downloads/8812au-20210629
		chmod +rwx dkms.conf dkms-make.sh edit-options.sh Kconfig 8812au.conf install-driver.sh remove-driver.sh 
		
		clear
		
		echo "If the prompts give you the option to hit either y/n responses make sure to ALWAYS HIT NO. Hit Enter if you FULLY understood this"
		read -p "" p
		
		./remove-driver.sh
		./install-driver.sh
	
	



####################################### OPTION 8 Advance Installs 

#We have to figure out how to make the code a bit more smarter and easier to execue code via the comamnd line 
	elif [ $Selection = "8" ]; then
	
	################## Advance Installs
	clear
	
	cd /home/kali/Downloads
	
	git clone https://github.com/HACK3RY2J/Anon-SMS
	git clone https://github.com/wireghoul/dotdotpwn
	git clone https://github.com/threat9/routersploit
	git clone https://github.com/Sanix-Darker/Brute-Force-Login
	git clone https://github.com/maldevel/IPGeoLocation
	git clone https://github.com/sullo/nikto
	git clone https://github.com/abhinavkavuri/PhoneInfoga
	git clone https://github.com/r00t-3xp10it/venom
	git clone https://github.com/exiftool/exiftool
	git clone https://github.com/GDSSecurity/wifitap
	git clone https://github.com/riverloopsec/killerbee
	
	cd /home/kali/Downloads/Anon-SMS && chmod +rwx Run.sh  && cd /home/kali/Downloads/
	cd /home/kali/Downloads/dotdotpwn && chmod +rwx dotdotpwn.pl && cd /home/kali/Downloads/
	cd /home/kali/Downloads/routersploit && chmod +rwx rsf.py && cd /home/kali/Downloads/
	cd /home/kali/Downloads/Brute-Force-Login/app && chmod +rwx * && cd /home/kali/Downloads #THis file still needs a bit more configurations to run properlly
	cd /home/kali/Downloads/IPGeoLocation && chmod +rwx ipgeolocation.py && cd /home/kali/Downloads/
	cd /home/kali/Downloads/nikto/program  && chmod +rwx nikto.pl && cd /home/kali/Downloads
	cd /home/kali/Downloads/PhoneInfoga && chmod +rwx * && cp config.example.py config.py && cd /home/kali/Downloads/
	cd /home/kali/Downloads/venom && chmod +rwx venom.sh && cd /home/kali/Downloads/
	cd /home/kali/Downloads/exiftool && chmod +rwx exiftool && cd /home/kali/Downloads/
	cd /home/kali/Downloads/wifitap && chmod +rwx *

	#This section is for installing and configuring the main KillerBee program
	cd /usr/include
	wget https://gist.github.com/ry/208354/archive/ba55a00d134b5f25ee82dd9e1a085ca0c247daaf.zip
	unzip ba55a00d134b5f25ee82dd9e1a085ca0c247daaf.zip
	rm ba55a00d134b5f25ee82dd9e1a085ca0c247daaf.zip
	cd "208354-ba55a00d134b5f25ee82dd9e1a085ca0c247daaf"
	mv gcrypt.h /usr/include
	cd /usr/include 
	rmdir "208354-ba55a00d134b5f25ee82dd9e1a085ca0c247daaf"

	pip3 install python-dev-tools
	pip3 install pygcrypt
	pip3 install pyusb
	pip3 install pycrypto
	pip3 install pyserial
	
	
	
	
####################################### OPTION 9
	elif [ $Selection = "9" ]; then  
		
		while true  
  		do 
  			clear
  			
  			echo "Which tool would you like to run? (THIS OPTION IS STILL IN ALPHA)"
  			echo "" 
  			echo ""
  			
  			echo "0 -> Exit"
		  	echo "1 -> Anon-SMS (Text Message Spoofing)"
		  	echo "2 -> DotDotPwn (Web Directory Traversal/Fuzzing)"
		  	echo "3 -> RouterSploit (Router Hacking)"
		  	echo "4 -> Brute-Forcer-Login (Login Bypass) STILL BEING CONFIGURED"
		  	echo "5 -> IPGeolocation (IP Trakcer)"
		  	echo "6 -> Nikto (Web Appication Vulnerability Scannner) Comes installed on the latest Kali by default"
		  	echo "7 -> PhoneInFoga (Phone Number LookUp Tool)"
		  	echo "8 -> Venom (Payload Generation Tool)"
		  	echo "9 -> ExifTool (Meta Data Extracton Tool)"
			echo "10 -> WifiTap (Wifi Injection Tool"
			echo "11 -> KillerBee (Zigbee tool anaylzer (Higher level bluetooth devices like smart homes))"
  
  			echo "" 
  			echo "" 
  			
		  	read -p "Enter in your Selection now" Selection2
		  	
		  	
		  	
		  	############ Exit
		  	if [ $Selection2 = "0" ]; then 
		  	
		  		echo "Exiting this option now."
		  		break
		  		
		  		
		  	############ Anon-SMS
		  	elif [ $Selection2 = "1" ]; then 
		  	
		  		while true 
		  		do 
					clear
					
		  			read -p "Do you have Anon-SMS installed Y/n?" Tool1
		  			
		  			if [ $Tool1 = "Y" ] || [ $Tool1 = "y" ]; then 
						
						cd /home/kali/Downloads/Anon-SMS && chmod +rwx Run.sh
						
						break
			
					elif [ $Tool1 = "N" ] || [ $Tool1 = "n" ]; then 
					
						cd /home/kali/Downloads/
						git clone https://github.com/HACK3RY2J/Anon-SMS
						cd /home/kali/Downloads/Anon-SMS && chmod +rwx Run.sh 

						break
			
					fi
		  			
		  		
		  		done 
		  	

		  	
		  		while true 
		  		do 	
		  			clear
		  		
		  			echo "Anon-SMS - Command list"
		  			echo "" 
		  			
		  			echo "man -> manual of the tool"
		  			echo "exit -> exits the current tool script so you can select another"
		  			echo "" 
		  			
		  			read -p "Please enter in the apporpriate command for the tool in order to launch it properlly now." AnonSMS
		  			
		  			if [ $AnonSMS = "man" ]; then 
		  			
		  				./Run.sh # This will run the default tool, which will show all the options you can run the progrm with from the terminal in the main program
		  				
		  				read -p "Hit Enter when you've read enough from the end user manual of the tool" p
		  				
		  			elif [ $AnonSMS = "exit" ]; then 
		  				
		  				echo "Exiting tool now"
		  				cd /home/kali/Downloads/
		  				
		  				clear
		  				break
		  				
		  			else 
		  				
		  				./Run.sh $AnonSMS
		  				read -p "Hit Enter when ready" p	  			
		  			fi 
		  		
		  		done 
		  	
		  	############ DotDotPwn
		  	elif [ $Selection2 = "2" ]; then 
		  	
		  		while true 
		  		do 
					clear
					
		  			read -p "Do you have DotDotPwn installed Y/n?" Tool2
		  			
		  			if [ $Tool2 = "Y" ] || [ $Tool2 = "y" ]; then 
						
						cd /home/kali/Downloads/dotdotpwn && chmod +rwx dotdotpwn.pl
						
						break
			
					elif [ $Tool2 = "N" ] || [ $Tool2 = "n" ]; then 
					
						cd /home/kali/Downloads/
						git clone https://github.com/wireghoul/dotdotpwn
						cd /home/kali/Downloads/dotdotpwn&& chmod +rwx dotdotpwn.pl

						break
			
					fi
		  			
		  		
		  		done 
		  	

		  	
		  		while true 
		  		do 	
		  			clear
		  		
		  			echo "DotDotPwn - Command list"
		  			echo "" 
		  			
		  			echo "man -> manual of the tool"
		  			echo "exit -> exits the current tool script so you can select another"
		  			echo "" 
		  			
		  			read -p "Please enter in the apporpriate command for the tool in order to launch it properlly now." DotDotPwn
		  			
		  			if [ $DotDotPwn = "man" ]; then 
		  			
		  				./dotdotpwn.pl # This will run the default tool, which will show all the options you can run the progrm with from the terminal in the main program
		  				
		  				read -p "Hit Enter when you've read enough from the end user manual of the tool" p
		  				
		  			elif [ $DotDotPwn = "exit" ]; then 
		  				
		  				echo "Exiting tool now"
		  				cd /home/kali/Downloads/
		  				
		  				clear
		  				break
		  				
		  			else 
		  				
		  				./dotdotpwn $DotDotPwn
		  				read -p "Hit Enter when ready" p	  			
		  			fi 
		  		
		  		done 
		  	
		  	
		  	############ RouterSploit
		  	elif [ $Selection2 = "3" ]; then 
		  	
		  		while true 
		  		do 
					clear
					
		  			read -p "Do you have RouterSploit installed Y/n?" Tool3
		  			
		  			if [ $Tool3 = "Y" ] || [ $Tool3 = "y" ]; then 
						
						cd /home/kali/Downloads/routersploit && chmod +rwx rsf.py
						
						break
			
					elif [ $Tool3 = "N" ] || [ $Tool3 = "n" ]; then 
					
						cd /home/kali/Downloads/
						git clone https://github.com/threat9/routersploit
						cd /home/kali/Downloads/routersploit && chmod +rwx rsf.py

						break
			
					fi
		  			
		  		
		  		done 
		  	

		  	
		  		while true 
		  		do 	
		  			clear
		  		
		  			echo "RouterSploit - Command list"
		  			echo "" 
		  			
		  			echo "man -> manual of the tool (USE THIS OPTION TO RUN THE TOOL AS IT'S A SEPARATE COMMAND LINE"
		  			echo "exit -> exits the current tool script so you can select another"
		  			echo "" 
		  			
		  			read -p "Please enter in the apporpriate command for the tool in order to launch it properlly now." RouterSPloit
		  			
		  			if [ $RouterSPloit = "man" ]; then 
		  			
		  				./rsf.py # This will run the default tool, which will show all the options you can run the progrm with from the terminal in the main program
		  				
		  				read -p "Hit Enter when you've read enough from the end user manual of the tool" p
		  				
		  			elif [ $RouterSPloit = "exit" ]; then 
		  				
		  				echo "Exiting tool now"
		  				cd /home/kali/Downloads/
		  				
		  				clear
		  				break
		  				
		  			else 
		  				
		  				./rsf.py $RouterSPloit
		  				read -p "Hit Enter when ready" p	  			
		  			fi 
		  		
		  		done 
		  	
		  	
		  	############ BruteForcer Login
		  	elif [ $Selection2 = "4" ]; then 
		  	
		  		while true 
		  		do 
					clear
					
		  			read -p "Do you have BruteForcer Login installed Y/n?" Tool4
		  			
		  			if [ $Tool4 = "Y" ] || [ $Tool4 = "y" ]; then 
						
						cd /home/kali/Downloads/Brute-Force-Login/app && chmod +rwx * 
						
						break
			
					elif [ $Tool4 = "N" ] || [ $Tool4 = "n" ]; then 
					
						cd /home/kali/Downloads/
						git clone https://github.com/Sanix-Darker/Brute-Force-Login
						cd /home/kali/Downloads/Brute-Force-Login/app && chmod +rwx *   

						break
			
					fi
		  			
		  		
		  		done 
		  	

		  	
		  		while true 
		  		do 	
		  			clear
		  		
		  			echo "BruteForcer Login - Command list"
		  			echo "" 
		  			
		  			echo "man -> manual of the tool"
		  			echo "exit -> exits the current tool script so you can select another"
		  			echo "" 
		  			
		  			read -p "Please enter in the apporpriate command for the tool in order to launch it properlly now." BruteForce
		  			
		  			if [ $BruteForce = "man" ]; then 
		  			
		  				./main.py # This will run the default tool, which will show all the options you can run the progrm with from the terminal in the main program
		  				
		  				read -p "Hit Enter when you've read enough from the end user manual of the tool" p
		  				
		  			elif [ $BruteForce = "exit" ]; then 
		  				
		  				echo "Exiting tool now"
		  				cd /home/kali/Downloads/
		  				
		  				clear
		  				break
		  				
		  			else 
		  				
		  				./main.py $BruteForce
		  				read -p "Hit Enter when ready" p	  			
		  			fi 
		  		
		  		done 
		  	
		  	
		  	############ IPGeoLocation
		  	elif [ $Selection2 = "5" ]; then 
	
		  		while true 
		  		do 
					clear
					
		  			read -p "Do you have IPGeolocation installed Y/n?" Tool5
		  			
		  			if [ $Tool5 = "Y" ] || [ $Tool5 = "y" ]; then 
						
						cd /home/kali/Downloads/IPGeoLocation && chmod +rwx ipgeolocation.py
						
						break
			
					elif [ $Tool5 = "N" ] || [ $Tool5 = "n" ]; then 
					
						cd /home/kali/Downloads/
						git clone https://github.com/maldevel/IPGeoLocation
						cd /home/kali/Downloads/IPGeoLocation && chmod +rwx ipgeolocation.py

						break
			
					fi
		  			
		  		
		  		done 
		  	

		  	
		  		while true 
		  		do 	
		  			clear
		  		
		  			echo "IPGeoLocation - Command list"
		  			echo "" 
		  			
		  			echo "man -> manual of the tool"
		  			echo "exit -> exits the current tool script so you can select another"
		  			echo "" 
		  			
		  			read -p "Please enter in the apporpriate command for the tool in order to launch it properlly now." IPLocate
		  			
		  			if [ $IPLocate = "man" ]; then 
		  			
		  				./ipgeolocation.py # This will run the default tool, which will show all the options you can run the progrm with from the terminal in the main program
		  				
		  				read -p "Hit Enter when you've read enough from the end user manual of the tool" p
		  				
		  			elif [ $IPLocate = "exit" ]; then 
		  				
		  				echo "Exiting tool now"
		  				cd /home/kali/Downloads/
		  				
		  				clear
		  				break
		  				
		  			else 
		  				
		  				./ipgeolocation.py $IPLocate
		  				read -p "Hit Enter when ready" p	  			
		  			fi 
		  		
		  		done 
		  	

		  	
		  	############ Nikto 
		  	elif [ $Selection2 = "6" ]; then 
		  	
		  		while true 
		  		do 
					clear
					
		  			read -p "Do you have Nikto installed Y/n?" Tool6
		  			
		  			if [ $Tool6 = "Y" ] || [ $Tool6 = "y" ]; then 
						
						cd /home/kali/Downloads/nikto/program  && chmod +rwx nikto.pl
						
						break
			
					elif [ $Tool6 = "N" ] || [ $Tool6 = "n" ]; then 
					
						cd /home/kali/Downloads/
						git clone https://github.com/sullo/nikto
						cd /home/kali/Downloads/nikto/program && chmod +rwx nikto.pl

						break
			
					fi
		  			
		  		
		  		done 
		  	

		  	
		  		while true 
		  		do 	
		  			clear
		  		
		  			echo "Nikto - Command list"
		  			echo "" 
		  			
		  			echo "man -> manual of the tool"
		  			echo "exit -> exits the current tool script so you can select another"
		  			echo "" 
		  			
		  			read -p "Please enter in the apporpriate command for the tool in order to launch it properlly now." Nikto
		  			
		  			if [ $Nikto = "man" ]; then 
		  			
		  				./nikto.pl # This will run the default tool, which will show all the options you can run the progrm with from the terminal in the main program
		  				
		  				read -p "Hit Enter when you've read enough from the end user manual of the tool" p
		  				
		  			elif [ $Nikto = "exit" ]; then 
		  				
		  				echo "Exiting tool now"
		  				cd /home/kali/Downloads/
		  				
		  				clear
		  				break
		  				
		  			else 
		  				
		  				./nikto.pl $Nikto
		  				read -p "Hit Enter when ready" p	  			
		  			fi 
		  		
		  		done 
		  	
		  	
		  	############ PhoneInFoga 
		  	elif [ $Selection2 = "7" ]; then 
		  	
		  		while true 
		  		do 
					clear
					
		  			read -p "Do you have PhoneInFoga installed Y/n?" Tool7
		  			
		  			if [ $Tool7 = "Y" ] || [ $Tool7 = "y" ]; then 
						
						cd /home/kali/Downloads/PhoneInfoga && chmod +rwx * && cp config.example.py config.py && 
						
						break
			
					elif [ $Tool7 = "N" ] || [ $Tool7 = "n" ]; then 
					
						cd /home/kali/Downloads/
						git clone https://github.com/abhinavkavuri/PhoneInfoga
						cd /home/kali/Downloads/PhoneInfoga && chmod +rwx * && cp config.example.py config.py && 

						break
			
					fi
		  			
		  		
		  		done 
		  	

		  	
		  		while true 
		  		do 	
		  			clear
		  		
		  			echo "PhoneInFoga - Command list"
		  			echo "" 
		  			
		  			echo "man -> manual of the tool"
		  			echo "exit -> exits the current tool script so you can select another"
		  			echo "" 
		  			
		  			read -p "Please enter in the apporpriate command for the tool in order to launch it properlly now." PhoneInFoga
		  			
		  			if [ $PhoneInFoga = "man" ]; then 
		  			
		  				./phoneinfoga.py # This will run the default tool, which will show all the options you can run the progrm with from the terminal in the main program
		  				
		  				read -p "Hit Enter when you've read enough from the end user manual of the tool" p
		  				
		  			elif [ $PhoneInFoga = "exit" ]; then 
		  				
		  				echo "Exiting tool now"
		  				cd /home/kali/Downloads/
		  				
		  				clear
		  				break
		  				
		  			else 
		  				
		  				./phoneinfoga.py $PhoneInFoga
		  				read -p "Hit Enter when ready" p	  			
		  			fi 
		  		
		  		done 
		  	
		  	
		  	############ Venom
		  	elif [ $Selection2 = "8" ]; then 
		  	
		  		while true 
		  		do 
					clear
					
		  			read -p "Do you have Venom installed Y/n?" Tool8
		  			
		  			if [ $Tool8 = "Y" ] || [ $Tool8 = "y" ]; then 
						
						cd /home/kali/Downloads/venom && chmod +rwx venom.sh
						
						break
			
					elif [ $Tool8 = "N" ] || [ $Tool8 = "n" ]; then 
					
						cd /home/kali/Downloads/
						git clone https://github.com/r00t-3xp10it/venom
						cd /home/kali/Downloads/venom && chmod +rwx venom.sh 

						break
			
					fi
		  			
		  		
		  		done 
		  	

		  	
		  		while true 
		  		do 	
		  			clear
		  		
		  			echo "Venom - Command list"
		  			echo "" 
		  			
		  			echo "man -> manual of the tool"
		  			echo "exit -> exits the current tool script so you can select another"
		  			echo "" 
		  			
		  			read -p "Please enter in the apporpriate command for the tool in order to launch it properlly now." Venom
		  			
		  			if [ $Venom = "man" ]; then 
		  			
		  				./venom.sh # This will run the default tool, which will show all the options you can run the progrm with from the terminal in the main program
		  				
		  				read -p "Hit Enter when you've read enough from the end user manual of the tool" p
		  				
		  			elif [ $Venom = "exit" ]; then 
		  				
		  				echo "Exiting tool now"
		  				cd /home/kali/Downloads/
		  				
		  				clear
		  				break
		  				
		  			else 
		  				
		  				./venom $Venom
		  				read -p "Hit Enter when ready" p	  			
		  			fi 
		  		
		  		done 
		  	
		  	############ ExifTool
		  	elif [ $Selection2 = "9" ]; then 
		  	
		  		while true 
		  		do 
					clear
					
		  			read -p "Do you have ExifTool installed Y/n?" Tool9
		  			
		  			if [ $Tool9 = "Y" ] || [ $Tool9 = "y" ]; then 
						
						cd /home/kali/Downloads/exiftool && chmod +rwx exiftool
						
						break
			
					elif [ $Tool9 = "N" ] || [ $Tool9 = "n" ]; then 
					
						cd /home/kali/Downloads/
						git clone https://github.com/exiftool/exiftool
						cd /home/kali/Downloads/exiftool && chmod +rwx exiftool

						break
			
					fi
		  			
		  		
		  		done 
		  	

		  	
		  		while true 
		  		do 	
		  			clear
		  		
		  			echo "ExifTool - Command list MOVE/SAVE ANY PHOTOS TO /home/kali/Downloads/exiftool"
		  			echo "" 
		  			
		  			echo "man -> manual of the tool"
		  			echo "exit -> exits the current tool script so you can select another"
		  			echo "" 
		  			
		  			read -p "Please enter in the apporpriate command for the tool in order to launch it properlly now." ExifTool
		  			
		  			if [ $ExifTool = "man" ]; then 
		  			
		  				./exiftool # This will run the default tool, which will show all the options you can run the progrm with from the terminal in the main program
		  				
		  				read -p "Hit Enter when you've read enough from the end user manual of the tool" p
		  				
		  			elif [ $ExifTool = "exit" ]; then 
		  				
		  				echo "Exiting tool now"
		  				cd /home/kali/Downloads/
		  				
		  				clear
		  				break
		  				
		  			else 
		  				
		  				./exiftool $ExifTool
		  				read -p "Hit Enter when ready" p	  			
		  			fi 
		  		
		  		done 
		  	
		  		
		  	 

			############ WifiTap
		  	elif [ $Selection2 = "10" ]; then 
		  	
		  		while true 
		  		do 
					clear
					
		  			read -p "Do you have WifiTap installed Y/n? " Tool10
		  			
		  			if [ $Tool10 = "Y" ] || [ $Tool10 = "y" ]; then 
						
						cd /home/kali/Downloads/wifitap && chmod +rwx * 
						
						break
			
					elif [ $Tool10 = "N" ] || [ $Tool10 = "n" ]; then 
					
						cd /home/kali/Downloads/
						git clone https://github.com/GDSSecurity/wifitap
						cd /home/kali/Downloads/wifitap && chmod +rwx *

						break
			
					fi
		  			
		  		
		  		done 
		  	

		  	
		  		while true 
		  		do 	
		  			clear
		  		
		  			echo "WifiTap - Command list: Check the the folder at -> /home/kali/Downloads/wifitap (TOOL HAS MULTIPLE RUN OPTIONS YOU CAN RUN OUTSIDE OF THIS PROGRAM)"
		  			echo "" 
		  			
		  			echo "man -> manual of the tool"
		  			echo "exit -> exits the current tool script so you can select another"
		  			echo "" 
		  			
		  			read -p "Please enter in the apporpriate command for the tool in order to launch it properlly now." WifiTap
		  			
		  			if [ $WifiTap = "man" ]; then 
		  			
		  				python3 wifitap.py # This will run the default tool, which will show all the options you can run the progrm with from the terminal in the main program
		  				
		  				read -p "Hit Enter when you've read enough from the end user manual of the tool" p
		  				
		  			elif [ $WifiTap = "exit" ]; then 
		  				
		  				echo "Exiting tool now"
		  				cd /home/kali/Downloads/
		  				
		  				clear
		  				break
		  				
		  			else 
		  				
		  				echo $WifiTap | python3 wifitap.py
		  				read -p "Hit Enter when ready" p	  			
		  			fi 
		  		
		  		done 
		  	
		  		
		  	 


			############ KillerBee
		  	elif [ $Selection2 = "11" ]; then 
		  	
		  		while true 
		  		do 
					clear
					
		  			read -p "Do you have KillerBee installed Y/n? " Tool11
		  			
		  			if [ $Tool11 = "Y" ] || [ $Tool11 = "y" ]; then 
						
						cd /home/kali/Downloads/killerbee/killerbee && chmod +rwx * 
						
						break
			
					elif [ $Tool11 = "N" ] || [ $Tool11 = "n" ]; then 
					
						#This is going to run the main script to both setup and run the killer bee program

						cd /usr/include
						wget https://gist.github.com/ry/208354/archive/ba55a00d134b5f25ee82dd9e1a085ca0c247daaf.zip
						unzip ba55a00d134b5f25ee82dd9e1a085ca0c247daaf.zip
						rm ba55a00d134b5f25ee82dd9e1a085ca0c247daaf.zip
						cd "208354-ba55a00d134b5f25ee82dd9e1a085ca0c247daaf"
						mv gcrypt.h /usr/include
						cd /usr/include 
						rmdir "208354-ba55a00d134b5f25ee82dd9e1a085ca0c247daaf"
						

						cd /home/kali/Downloads/
						git clone https://github.com/riverloopsec/killerbee
						cd /home/kali/Downloads/killerbee

						pip3 install python-dev-tools
						pip3 install pygcrypt
						pip3 install pyusb
						pip3 install pycrypto
						pip3 install pyserial

						cd /home/kali/Downloads/killerbee/killerbee

						

						break
			
					fi
		  			
		  		
		  		done 
		  	

		  	
		  		while true 
		  		do 	
		  			clear
		  		
		  			echo "KillerBee - Command list:"
		  			echo "" 
		  			
		  			echo "man -> manual of the tool"
		  			echo "exit -> exits the current tool script so you can select another"
		  			echo "" 
		  			
		  			read -p "Please enter in the apporpriate command for the tool in order to launch it properlly now." KillerBee
		  			
		  			if [ $KillerBee = "man" ]; then 
		  			
		  				python3 zigbeedecode.py # This will run the default tool, which will show all the options you can run the progrm with from the terminal in the main program
		  				
		  				read -p "Hit Enter when you've read enough from the end user manual of the tool" p
		  				
		  			elif [ $KillerBee = "exit" ]; then 
		  				
		  				echo "Exiting tool now"
		  				cd /home/kali/Downloads/
		  				
		  				clear
		  				break
		  				
		  			else 
		  				
		  				echo $KillerBee | python3 zigbeedecode.py
		  				read -p "Hit Enter when ready" p	  			
		  			fi 
		  		
		  		done 
		  	
		  		
		  	fi 
		  	
		done 
		
		
	####################################### OPTION 10 Recommended Installs
	elif [ $Selection = "10" ]; then 
	 	
		clear
		
		while true
		do 
			echo "Would you like to upgrade the system Y/n?"
			echo "" 
			
			read -p "" Upgrade
			
			if [ $Upgrade = "Y" ] || [ $Upgrade = "y" ]; then 
			
				apt-get upgrade -y 
				break
			
			elif [ $Upgrade = "N" ] || [ $Upgrade = "n" ]; then 
			
				break
			
			fi
		
		done
		
		
		apt-get install httrack -y
		apt-get install gobuster -y
		apt-get install gdb-minimal -y 
		apt-get install bc -y
		apt-get install bluetooth -y
		apt-get install dkms -y
		apt-get install bettercap -y
		apt-get install bluesnarfer -y
		apt-get install blueranger -y
		apt-get install btscanner -y
		apt-get install emailharvester -y 
		apt-get install sendmail -y
		apt --fix-broken install -y
		apt-get install default-jre -y 
		apt-get install openjdk-17-jdk -y
	
		mkdir -p /dev/bluetooth/rfcomm
		mknod -m 666 /dev/bluetooth/rfcomm/0 c 216 0
		mknod --mode=666 /dev/rfcomm0 c 216 0 
		service bluetooth start
		
		
		apt-get install tor -y

		apt-get install seahorse -y #This is going to install a password manager and updater in our linux system
		apt-get install nodejs -y #This is going to allow us to work with nodejs programs
		apt-get install inviteflood -y #This is going to allow us to flood the SIP rpotocol
		apt-get install dnsspoof -y #This is going to allow us to sniff out network traffic data as the main gateway 
		apt-get install maltego -y #This allow us to utilize various PI search queires through a main GUI interface
		apt-get install p0f -y  #This is used for passive recon against web server applications to stay more anonymous than nmap
		apt-get install amap -y #This is a more service scanning oriented to to discover the pinpoint services that are running on a system which might come up a bit vague compared to nmap
		apt-get install rkhunter -y #This allow us to check if ther ehas been a rootkit installed on the system
		apt-get install lynis -y #This is used to run a manual vulnerabiltiy chekc against either a local system or a rmeoe system via an executable we can pipe over to the target remotely  
		apt-get install cisco-global-exploiter -y #This is used to check cisco devices we locate on a etwork for any and all types of vulnerabilties 
		apt-get install oscanner -y # This allow us to scan against a target system and check whether or not it is running an oracle based database on it as well as if the databse runing on it has any vulnerbailtiies of i'ts own
		apt-get install sfuzz -y #This allows us to scan for bugs that might exist in a program
		apt-get install zzuf -y #This is used n order to test and pipe input for fuzzing into programs for bug hunting/applicaiton penetration testing
		apt-get install hostapd -y #This allows us to create out own access point on our NIC card that operates wirelessly
		apt-get install wifiphisher -y #This is going to allow us to set up jammming exploits on access points
		apt-get install wifi-honey -y #This is a network monitoring tool for a honey pot in order to track attack patterns on a network, as well as monitor client activity on the network
		apt-get install redfang -y #This allows us to blueborne bluetooth devices even if they aren't in discovery mode
		apt-get install bluelog -y #This is going to allow us to both scan for bluetooth devices, as well as keep a genral log of our mainfindings automatically apt-get install parsero #This program is used to fetch the robot.txt file from a web application
		apt-get install rtgen -y #This allows us to generate rainbow tabels for faster password cracking (REQUIRES DISK USAGE/SPEED/SPACE)
		apt-get install ltrace -y #This is goinng to allow us to trace the function calls on a binary level within other programs THIS IS FOR LIBRARY FUNCTION CALLS  WTHIN THE PROGRAM
		apt-get install strace -y #This is goinng to allow us to trace the function calls on a binary level within other programs THIS IS FOR SYSTEM FUNCTION CALLS  WTHIN THE PROGRAM

		#This is going to check and fix any and all broken installs on the system
		apt --fix-broken install -y

		clear
		
		while true
		do 
			
			echo "Would you like to run the tor proxy? Y/n?"
			echo "" 
			
			read -p "" torproxy
			
			if [ $torproxy = "Y" ] || [ $torproxy = "y" ]; then 
			
				echo "READ THESE INSTRUCTIONS VERY CAREFULLY IF YOU WISH TO RUN TOR PROXY CHAINS"
				echo ""
			
				echo "Open another terminal session via ctrl+shift+n"
				echo ""
		
				echo "While you're in the other shell run the following command -> nano /etc/proxychains4.conf"
				echo ""
		
				echo "While the fiile is open, scroll down until you find a row a text with (dynamic_chain), and remove the # sign next to it to remove the comment"
				echo ""
		
				echo "Now look for the (static_chain) line of text and add a # symbol next to it to comment it out"
				echo ""
						
				echo "Now scroll down to the very end of the file where a line says (socks4) On the line bellow it add another called (socks5 127.0.0.1 9050) to configure tor"
				echo ""
		
				echo "Hit Ctrl+O, then hit enter, then hit Ctrl-X to close the file"
				echo ""
				
				echo "After Tor Service is setup, Run the command (proxychains) along with any network servie: browser, nmap, etc, and it will route through tor service"
				echo "EX ->: proxychains nmap -A google.com" 
				echo "EX2 ->: proxychains firefox dnsleaktest.com (This site is extremely good to see if tor services is changing your IP address)"
				echo "" 
				
				echo "Hit enter when you've done all this, and the tor service will execute"
				echo ""
				
				read -p "" p
				service tor start 
				
				break
			
			elif [ $torproxy = "N" ] || [ $torproxy = "n" ]; then 
			
				break
			
			fi
		
		done
		
		clear
		
		echo "All basic installations are complete ^_^ Hit Enter"
		
		read -p "" p

		read -p "" p
		
		################## VSCode Install
		clear 
		
		echo "Hover over to this link here to download it -> https://code.visualstudio.com/docs/?dv=linux64_deb"
		echo ""
		
		echo "Hit enter once you've done so and it's downloaded ^_^"
		echo ""
		
		read -p "" p
		
		cd /home/kali/Downloads
		dpkg -i code*
		
		echo "VsCode is now a destkop executable that can be searched from the start menu."
		echo "To run it in the terminal run it as NON-ROOT user, and enter -> code "
				
		
		################## Telegram Install
		clear 
		
		echo "Hover over to this link here to download it -> https://telegram.org/dl/desktop/linux"
		echo ""
				
		echo "If you want to continue the script after telegram executes simply close Telegram manually. The script will pick up where it left off from"
		echo "Hit enter when you have read this and it's downloaded ^_^"
		
		read -p "" p
		
		cd /home/kali/Downloads
		xz -df tsetup*
		tar -xvf tsetup*
		cd Telegram
		chmod +rwx Telegram
		./Telegram --register-app
		
		echo "Telegram is now a destkop executable that can be searched from the start menu"			
		
		
		
		################# Bettercap and Aircrack-ng Drivers install
		clear 
		
		cd /home/kali/Downloads
		
		apt install golang git build-essential libpcap-dev libusb-1.0-0-dev libnetfilter-queue-dev -y
		git clone https://github.com/bettercap/bettercap.git 
		cd bettercap
		make build
		sudo make install
		cd ..
		git clone https://github.com/bettercap/caplets.git
		cd caplets
		make install
		
		clear
		 
		cd /home/kali/Downloads
		git clone https://github.com/morrownr/8812au-20210629 
		cd /home/kali/Downloads/8812au-20210629
		chmod +rwx dkms.conf dkms-make.sh edit-options.sh Kconfig 8812au.conf install-driver.sh remove-driver.sh 
		
		clear
		
		echo "If the prompts give you the option to hit either y/n responses make sure to ALWAYS HIT NO. Hit Enter if you FULLY understood this"
		read -p "" p
		
		./remove-driver.sh
		./install-driver.sh
	

	####################################### OPTION 11 PYTHON3 GRAYHAT/BLACKHAT INSTALL MODULES
	elif [ $Selection = "11" ]; then 

		#These are a series of pip commands that will install all the needed python3 modules for blackhat and grayhat penetration testing for the language 
		python -m pip install pywin32 #This allows us to interact with the windows 32 api on a windows kernel
		pip3 install netaddr
		pip3 install paramiko
		pip3 install pycrypto
		python -m pip install cryptography 
        pip3 install gmpy
        pip3 install rsa
        pip3 install uiautomation
        pip3 install selenium
        pip3 install chromdriver_installer
        pip3 install github3.py
        pip3 install Flask
        pip3 install Flask-Cors
        pip3 install mysql-connector-python
        pip3 install pyLoRa
        pip3 install circuitpython-nrf24101
		
        apt-get install python3-pyqt5 #This allow you to make graphical user interfaces in Python3
        pip3 install arduino-python3 #This will give you the abiltiy to work with then ardunio breadboard library in python3

#Else if the the wrong input is set into the code it will clear the main terminal window and then run the main output for the first section of the code again
else 

	clear

fi #This is the end of the main if statement

done #THis is the end of the main while loop statement
}

#This is going to call our main function that will control an drun the entire script 
main 

#MasterScriptFWebsVer4 -> FINAL VERSION

#This is the main function of the program that will overall run the entire script. 
main()
{
	
	clear
	
	read -p "Are online? Connect first then hit enter!" p

	clear

	while true
		do 
			echo "Would you like to update the system (Y/n?) If you would like to see the main banner for the program you need to make sure it's updated so the banner will show and install itself!"
			echo "" 
			
			read -p "" Update
			
			if [ $Update = "Y" ] || [ $Update = "y" ]; then 
			
				apt-get update -y 
				apt-get install jp2a -y #This is going to help load the main banner for my program overall

				cd /home/kali/Downloads
				git clone https://github.com/FutabaWebs/Futaba_Webs_Banner.git 
				jp2a /home/kali/Desktop/Futaba_Webs_Banner/heros.png #This is going to load up our main banner so it shows to the end user

				break
			
			elif [ $Update = "N" ] || [ $Update = "n" ]; then 
			
				apt-get install jp2a -y #This is going to help load the main banner for my program overall

				cd /home/kali/Downloads
				git clone https://github.com/FutabaWebs/Futaba_Webs_Banner.git 
				jp2a /home/kali/Desktop/Futaba_Webs_Banner/heros.png #This is going to load up our main banner so it shows to the end user

				
				clear
				
				break
			
			fi
		
		done
		

  while true  
  do 

	jp2a /home/kali/Desktop/Futaba_Webs_Banner/heros.png #This is going to load up our main banner so it shows to the end user
	echo ""
	echo ""
	echo ""

  	echo "What would you like to install?"
  	echo ""
  	
  	echo " Please note you might need more disk space to install everything. Recommend options: 1, 2, 3, 4, 6 to install first" 
  	echo ""
  	
  	echo "NEWS: -> You can now run tools from the program, and it will auto configure and install what is needed to run it for you! ^_^"
  	echo "NEWS: -> There is now a reocommeded install option that will install all the recommended options in order"
  	echo "NEWS: -> Tor option will SOON check if you are root, and will prevent you from installing if not. This is to prevent corrupted installs"
  	echo "NEWS: -> The program now remembers if you've selected Y/n to a tool run in option 9"
  	echo "NEWS: -> Some of the input has been made a bit cleaner and easier to tell where the cursor is for whenn you need to provide input in the program"
  	echo "NEWS: -> The program now has less hick ups when performing installs, preventing the end user from having to enter yes too frequently" 
  	echo "NEWS: -> The program is now able to install any and all forms of python modules via the pip installer for easy python3 programming setup"
	echo ""
	echo "NEWS: -> The following tools have been added to the program: jp2a, nodejs, inviteflood, dnsspoof, maltego, p0f, amap, rkhunter, lynis, cge.pl,"
	echo "oscaner, sfuzz, zzuf, hostapd, wifiphisher, wifi-honey, redfang, bluelog, parsero, rtgen, ltrace, strace"
	echo ""
  	
  	echo "0 -> Exit"
  	echo "1 -> Basic Install"
  	echo "2 -> Tor Browser Install (YOU NEED TO BE NON-ROOT TO RUN THIS OPTION. EXIT THE PROGRAM AND RUN IT THAT WAY)"
  	echo "3 -> VSCode Install"
  	echo "4 -> Telegram Install"
  	echo "5 -> WordPress CTF Install"
  	echo "6 -> Bettercap and Aircrack-ng Driver Installs"
  	echo "7 -> General Insall" 
  	echo "8 -> Advanced ToolBelt Install"
  	echo "9 -> Run Tools (RUN OPTION 8 BEFORE RUNNING THIS OR IT WON'T WORK)"
  	echo "10 -> Recommended Install (Installs Options 1, 3, 4, and 6) HIGHLY RECOMMEND THIS OPTION FOR QUICK INSTALL AND PROGRESS"  
  	echo "11 -> Python Modules (Installs a set of python3 programming modules and libraries best suited for black/grahat python3 programming)"
  
  	echo "Enter in your Selection now"
  	echo ""
  	
  	read -p "" Selection
  
  	
	
####################################### OPTION 0 Exit
	if [ $Selection = "0" ]; then 
	
		echo "Exiting the program now"
		clear
		exit
		
		


####################################### OPTION 1 Basic Install
	elif [ $Selection = "1" ]; then 
		
		clear
		
		while true
		do 
			echo "Would you like to upgrade the system Y/n?"
			echo "" 
			
			read -p "" Upgrade
			
			if [ $Upgrade = "Y" ] || [ $Upgrade = "y" ]; then 
			
				apt-get upgrade -y 
				break
			
			elif [ $Upgrade = "N" ] || [ $Upgrade = "n" ]; then 
				
				clear
				
				break
			
			fi
		
		done
		
		
		apt-get install httrack -y
		apt-get install gobuster -y
		apt-get install gdb-minimal -y 
		apt-get install bc -y
		apt-get install bluetooth -y
		apt-get install dkms -y
		apt-get install bettercap -y
		apt-get install bluesnarfer -y
		apt-get install blueranger -y
		apt-get install btscanner -y
		apt-get install emailharvester -y 
		apt-get install sendmail -y
		apt-get install default-jre -y 
		apt-get install openjdk-17-jdk -y
		
		mkdir -p /dev/bluetooth/rfcomm
		mknod -m 666 /dev/bluetooth/rfcomm/0 c 216 0
		mknod --mode=666 /dev/rfcomm0 c 216 0 
		service bluetooth start
		
		
		apt-get install tor -y

		apt-get install seahorse -y #This is going to install a password manager and updater in our linux system
		apt-get install nodejs -y #This is going to allow us to work with nodejs programs
		apt-get install inviteflood -y #This is going to allow us to flood the SIP rpotocol
		apt-get install dnsspoof -y #This is going to allow us to sniff out network traffic data as the main gateway 
		apt-get install maltego -y #This allow us to utilize various PI search queires through a main GUI interface
		apt-get install p0f -y  #This is used for passive recon against web server applications to stay more anonymous than nmap
		apt-get install amap -y #This is a more service scanning oriented to to discover the pinpoint services that are running on a system which might come up a bit vague compared to nmap
		apt-get install rkhunter -y #This allow us to check if ther ehas been a rootkit installed on the system
		apt-get install lynis -y #This is used to run a manual vulnerabiltiy chekc against either a local system or a rmeoe system via an executable we can pipe over to the target remotely  
		apt-get install cisco-global-exploiter -y #This is used to check cisco devices we locate on a etwork for any and all types of vulnerabilties 
		apt-get install oscanner -y # This allow us to scan against a target system and check whether or not it is running an oracle based database on it as well as if the databse runing on it has any vulnerbailtiies of i'ts own
		apt-get install sfuzz -y #This allows us to scan for bugs that might exist in a program
		apt-get install zzuf -y #This is used n order to test and pipe input for fuzzing into programs for bug hunting/applicaiton penetration testing
		apt-get install hostapd -y #This allows us to create out own access point on our NIC card that operates wirelessly
		apt-get install wifiphisher -y #This is going to allow us to set up jammming exploits on access points
		apt-get install wifi-honey -y #This is a network monitoring tool for a honey pot in order to track attack patterns on a network, as well as monitor client activity on the network
		apt-get install redfang -y #This allows us to blueborne bluetooth devices even if they aren't in discovery mode
		apt-get install bluelog -y #This is going to allow us to both scan for bluetooth devices, as well as keep a genral log of our mainfindings automatically apt-get install parsero #This program is used to fetch the robot.txt file from a web application
		apt-get install rtgen -y #This allows us to generate rainbow tabels for faster password cracking (REQUIRES DISK USAGE/SPEED/SPACE)
		apt-get install ltrace -y #This is goinng to allow us to trace the function calls on a binary level within other programs THIS IS FOR LIBRARY FUNCTION CALLS  WTHIN THE PROGRAM
		apt-get install strace -y #This is goinng to allow us to trace the function calls on a binary level within other programs THIS IS FOR SYSTEM FUNCTION CALLS  WTHIN THE PROGRAM

		#This is going to check and fix any and all broken installs on the system
		apt --fix-broken install -y

		clear
		
		while true
		do 
			
			echo "Would you like to run the tor proxy? Y/n?"
			echo "" 
			
			read -p "" torproxy
			
			if [ $torproxy = "Y" ] || [ $torproxy = "y" ]; then 
			
				echo "READ THESE INSTRUCTIONS VERY CAREFULLY IF YOU WISH TO RUN TOR PROXY CHAINS"
				echo ""
			
				echo "Open another terminal session via ctrl+shift+n"
				echo ""
		
				echo "While you're in the other shell run the following command -> nano /etc/proxychains4.conf"
				echo ""
		
				echo "While the fiile is open, scroll down until you find a row a text with (dynamic_chain), and remove the # sign next to it to remove the comment"
				echo ""
		
				echo "Now look for the (static_chain) line of text and add a # symbol next to it to comment it out"
				echo ""
						
				echo "Now scroll down to the very end of the file where a line says (socks4) On the line bellow it add another called (socks5 127.0.0.1 9050) to configure tor"
				echo ""
		
				echo "Hit Ctrl+O, then hit enter, then hit Ctrl-X to close the file"
				echo ""
				
				echo "After Tor Service is setup, Run the command (proxychains) along with any network servie: browser, nmap, etc, and it will route through tor service"
				echo "EX ->: proxychains nmap -A google.com" 
				echo "EX2 ->: proxychains firefox dnsleaktest.com (This site is extremely good to see if tor services is changing your IP address)"
				echo "" 
				
				echo "Hit enter when you've done all this, and the tor service will execute"
				echo ""
				
				read -p "" p
				service tor start 
				
				break
			
			elif [ $torproxy = "N" ] || [ $torproxy = "n" ]; then 
			
				break
			
			fi
		
		done
		
		clear
		
		echo "All basic installations are complete ^_^ Hit Enter"
		
		read -p "" p

	
	
	
	
####################################### OPTION 2 Tor Browser Inatall 
	elif [ $Selection = "2" ]; then 
	
		clear 
		
		echo "YOU NEED TO RUN THIS AS NON-ROOT USER ONLY! IF YOU ARE ROOT, HIT CTRL+SHIFT+N to spawn a new shell."
		echo "Once the new shell is open, move to /Desktop and then run the program again the same way with ./filename"
		echo "If you are NOT ROOT, then please enter 0 in order to continue the install, exit if you simply wish to exit the program"
		echo "Any other option will simply return you to the main menu"
		echo "Please enter your selection now" 
		echo ""
		read -p "" AreYouRoot
		
		#The program needs to pipe the username into a variable to double check if the end user is running the program as a non-root user
		if [ $AreYouRoot = "0" ]; then 
		
			cd /home/kali/Downloads
			wget https://www.torproject.org/dist/torbrowser/12.0.4/tor-browser-linux64-12.0.4_ALL.tar.xz --no-check-certificate 
			xz -df tor*
			tar -xvf tor*
			mv tor-browser /home/kali/Documents
			cd /home/kali/Documents
			cd tor-browser
			./start-tor-browser.desktop --register-app
			
			read -p "Tor is now registered as an applicaion on the system. Hit Enter to proceed ^_^"
			clear	
			
		
		elif [ $AreYouRoot = "exit" ]; then 
		
			exit
		
		else
			main
		
		fi
	

	
####################################### OPTION 3 VSCode Install 
	elif [ $Selection = "3" ]; then 
	
		clear 
		
		echo "Hover over to this link here to download it -> https://code.visualstudio.com/docs/?dv=linux64_deb"
		echo ""
		
		echo "Hit enter once you've done so and it's downloaded ^_^"
		echo ""
		
		read -p "" p
		
		
		cd /home/kali/Downloads
		dpkg -i code*
	
		echo "VsCode is now a destkop executable that can be searched from the start menu."
		echo "To run it in the terminal run it as NON-ROOT user, and enter -> code "
		
	
####################################### OPTION 4 Telegram Install 
	elif [ $Selection = "4" ]; then 
	
		clear 
		
		echo "Hover over to this link here to download it -> https://telegram.org/dl/desktop/linux"
		echo ""
				
		echo "If you want to continue the script after telegram executes simply close Telegram manually. The script will pick up where it left off from"
		echo "Hit enter when you have read this and it's downloaded ^_^"
		
		read -p "" p
		
		cd /home/kali/Downloads
		xz -df tsetup*
		tar -xvf tsetup*
		cd Telegram
		chmod +rwx Telegram
		./Telegram --register-app
		echo "Telegram is now a destkop executable that can be searched from the start menu"	
	
	
	
	
####################################### OPTION 5 WordPress Install
	elif [ $Selection = "5" ]; then 
	
		clear
		
		cd /home/kali/Downloads && wget https://sourceforge.net/projects/xampp/files/XAMPP%20Linux/8.0.25/xampp-linux-x64-8.0.25-0-installer.run --no-check-certificate 
		git clone https://github.com/FutabaWebs/WordPressCTF
		chmod +rwx xampp*
		echo ""

		read -p "Files installed.... Hit enter"  p
		clear
		
		echo "Running xammpp now. Close the application when finished to proceed"

		./xampp*

		cd /home/kali/Downloads/WordPressCTF && unzip cybersec && mv cybersec /opt/lampp/htdocs
		cd /opt/lampp && ./xampp start 

		echo ""
		echo "Server initialized...."
		echo ""

		echo "Run over to this link here -> http://localhost/phpmyadmin"
		echo "Watch this video along side it -> https://drive.google.com/file/d/1MQ0fZJhaG-UgrqkICkYWKDDAx5UeZb3y/view?usp=share_link"
		echo ""

		read -p "Hit enter once you've set all this up" p
		clear

		echo "Run over to the main server site -> http://localhost/cybersec/"
		read -p "INsTaLl CoMpLeTe ^_^ HIt enter to close the program!" p



	
	
	
####################################### OPTION 6 Bettecap and Aircrack-ng Driver Installs 
	
	elif [ $Selection = "6" ]; then 
	
		clear 
		
		cd /home/kali/Downloads
		
		apt install golang git build-essential libpcap-dev libusb-1.0-0-dev libnetfilter-queue-dev -y
		git clone https://github.com/bettercap/bettercap.git
		cd bettercap
		make build
		sudo make install
		cd ..
		git clone https://github.com/bettercap/caplets.git
		cd caplets
		make install
		
		clear
		 
		cd /home/kali/Downloads
		git clone https://github.com/morrownr/8812au-20210629 
		cd /home/kali/Downloads/8812au-20210629
		chmod +rwx dkms.conf dkms-make.sh edit-options.sh Kconfig 8812au.conf install-driver.sh remove-driver.sh 
		
		clear
		
		echo "If the prompts give you the option to hit either y/n responses make sure to ALWAYS HIT NO. Hit Enter if you FULLY understood this"
		read -p "" p
		
		./remove-driver.sh
		./install-driver.sh
	
	
	
####################################### OPTION 7 General Install
	
	elif [ $Selection = "7" ]; then 
	
	
		################## General Install 
		clear
		
		apt-get update -y 
		
		clear
		
		while true
		do 
			echo "Would you like to upgrade the system Y/n?"
			echo "" 
			
			read -p "" Upgrade
			
			if [ $Upgrade = "Y" ] || [ $Upgrade = "y" ]; then 
			
				apt-get upgrade -y 
				break
			
			elif [ $Upgrade = "N" ] || [ $Upgrade = "n" ]; then 
			
				break
			
			fi
		
		done
		
		
		apt-get install httrack -y
		apt-get install gobuster -y
		apt-get install gdb-minimal -y 
		apt-get install bc -y
		apt-get install bluetooth -y
		apt-get install dkms -y
		apt-get install bettercap -y
		apt-get install bluesnarfer -y
		apt-get install blueranger -y
		apt-get install btscanner -y
		apt-get install emailharvester -y 
		apt-get install sendmail -y
		apt --fix-broken install -y
		apt-get install default-jre -y 
		apt-get install openjdk-17-jdk -y
		
		mkdir -p /dev/bluetooth/rfcomm
		mknod -m 666 /dev/bluetooth/rfcomm/0 c 216 0
		mknod --mode=666 /dev/rfcomm0 c 216 0 
		service bluetooth start
		
		
		apt-get install tor -y
		
		clear
		
		while true
		do 
			
			echo "Would you like to run the tor proxy? Y/n?"
			echo "" 
			
			read -p "" torproxy
			
			if [ $torproxy = "Y" ] || [ $torproxy = "y" ]; then 
			
				echo "READ THESE INSTRUCTIONS VERY CAREFULLY IF YOU WISH TO RUN TOR PROXY CHAINS"
				echo ""
			
				echo "Open another terminal session via ctrl+shift+n"
				echo ""
		
				echo "While you're in the other shell run the following command -> nano /etc/proxychains4.conf"
				echo ""
		
				echo "While the fiile is open, scroll down until you find a row a text with (dynamic_chain), and remove the # sign next to it to remove the comment"
				echo ""
		
				echo "Now look for the (static_chain) line of text and add a # symbol next to it to comment it out"
				echo ""
						
				echo "Now scroll down to the very end of the file where a line says (socks4) On the line bellow it add another called (socks5 127.0.0.1 9050) to configure tor"
				echo ""
		
				echo "Hit Ctrl+O, then hit enter, then hit Ctrl-X to close the file"
				echo ""
				
				echo "After Tor Service is setup, Run the command (proxychains) along with any network servie: browser, nmap, etc, and it will route through tor service"
				echo "EX ->: proxychains nmap -A google.com" 
				echo "EX2 ->: proxychains firefox dnsleaktest.com (This site is extremely good to see if tor services is changing your IP address)"
				echo "" 
				
				echo "Hit enter when you've done all this, and the tor service will execute"
				echo ""
				
				read -p "" p
				service tor start 
				
				break
			
			elif [ $torproxy = "N" ] || [ $torproxy = "n" ]; then 
			
				break
			
			fi
		
		done
		
		clear
		
		echo "All basic installations are complete ^_^ Hit Enter"
		
		read -p "" p

		
		################## VSCode Install
		clear 
		
		echo "Hover over to this link here to download it -> https://code.visualstudio.com/docs/?dv=linux64_deb"
		echo ""
		
		echo "Hit enter once you've done so and it's downloaded ^_^"
		echo ""
		
		read -p "" p
		
		cd /home/kali/Downloads
		dpkg -i code*
		
		echo "VsCode is now a destkop executable that can be searched from the start menu."
		echo "To run it in the terminal run it as NON-ROOT user, and enter -> code "
		
		################## Telegram Install
		clear 
		
		echo "Hover over to this link here to download it -> https://telegram.org/dl/desktop/linux"
		echo ""
				
		echo "If you want to continue the script after telegram executes simply close Telegram manually. The script will pick up where it left off from"
		echo "Hit enter when you have read this and it's downloaded ^_^"
		
		read -p "" p
		
		cd /home/kali/Downloads
		xz -df tsetup*
		tar -xvf tsetup*
		cd Telegram
		chmod +rwx Telegram
		./Telegram --register-app
		
		echo "Telegram is now a destkop executable that can be searched from the start menu"	
			
		
		
		
		
		################## WordPressCTF Install
		elif [ $Selection = "5" ]; then 
	
		clear
		
		cd /home/kali/Downloads && wget https://sourceforge.net/projects/xampp/files/XAMPP%20Linux/8.0.25/xampp-linux-x64-8.0.25-0-installer.run --no-check-certificate 
		git clone https://github.com/FutabaWebs/WordPressCTF
		chmod +rwx xampp*
		echo ""

		read -p "Files installed.... Hit enter"  p
		clear
		
		echo "Running xammpp now. Close the application when finished to proceed"

		./xampp*

		cd /home/kali/Downloads/WordPressCTF && unzip cybersec && mv cybersec /opt/lampp/htdocs
		cd /opt/lampp && ./xampp start 

		echo ""
		echo "Server initialized...."
		echo ""

		echo "Run over to this link here -> http://localhost/phpmyadmin"
		echo "Watch this video along side it -> https://drive.google.com/file/d/1MQ0fZJhaG-UgrqkICkYWKDDAx5UeZb3y/view?usp=share_link"
		echo ""

		read -p "Hit enter once you've set all this up" p
		clear

		echo "Run over to the main server site -> http://localhost/cybersec/"
		read -p "INsTaLl CoMpLeTe ^_^ HIt enter to close the program!" p
		
		
		
		
		
		
		################# Bettercap and Aircrack-ng Drivers install
		clear 
		
		cd /home/kali/Downloads
		
		apt install golang git build-essential libpcap-dev libusb-1.0-0-dev libnetfilter-queue-dev -y
		git clone https://github.com/bettercap/bettercap.git
		cd bettercap
		make build
		sudo make install
		cd ..
		git clone https://github.com/bettercap/caplets.git
		cd caplets
		make install
		
		clear
		 
		cd /home/kali/Downloads
		git clone https://github.com/morrownr/8812au-20210629 
		cd /home/kali/Downloads/8812au-20210629
		chmod +rwx dkms.conf dkms-make.sh edit-options.sh Kconfig 8812au.conf install-driver.sh remove-driver.sh 
		
		clear
		
		echo "If the prompts give you the option to hit either y/n responses make sure to ALWAYS HIT NO. Hit Enter if you FULLY understood this"
		read -p "" p
		
		./remove-driver.sh
		./install-driver.sh
	
	



####################################### OPTION 8 Advance Installs 

#We have to figure out how to make the code a bit more smarter and easier to execue code via the comamnd line 
	elif [ $Selection = "8" ]; then
	
	################## Advance Installs
	clear
	
	cd /home/kali/Downloads
	
	git clone https://github.com/HACK3RY2J/Anon-SMS
	git clone https://github.com/wireghoul/dotdotpwn
	git clone https://github.com/threat9/routersploit
	git clone https://github.com/Sanix-Darker/Brute-Force-Login
	git clone https://github.com/maldevel/IPGeoLocation
	git clone https://github.com/sullo/nikto
	git clone https://github.com/abhinavkavuri/PhoneInfoga
	git clone https://github.com/r00t-3xp10it/venom
	git clone https://github.com/exiftool/exiftool
	git clone https://github.com/GDSSecurity/wifitap
	git clone https://github.com/riverloopsec/killerbee
	
	cd /home/kali/Downloads/Anon-SMS && chmod +rwx Run.sh  && cd /home/kali/Downloads/
	cd /home/kali/Downloads/dotdotpwn && chmod +rwx dotdotpwn.pl && cd /home/kali/Downloads/
	cd /home/kali/Downloads/routersploit && chmod +rwx rsf.py && cd /home/kali/Downloads/
	cd /home/kali/Downloads/Brute-Force-Login/app && chmod +rwx * && cd /home/kali/Downloads #THis file still needs a bit more configurations to run properlly
	cd /home/kali/Downloads/IPGeoLocation && chmod +rwx ipgeolocation.py && cd /home/kali/Downloads/
	cd /home/kali/Downloads/nikto/program  && chmod +rwx nikto.pl && cd /home/kali/Downloads
	cd /home/kali/Downloads/PhoneInfoga && chmod +rwx * && cp config.example.py config.py && cd /home/kali/Downloads/
	cd /home/kali/Downloads/venom && chmod +rwx venom.sh && cd /home/kali/Downloads/
	cd /home/kali/Downloads/exiftool && chmod +rwx exiftool && cd /home/kali/Downloads/
	cd /home/kali/Downloads/wifitap && chmod +rwx *

	#This section is for installing and configuring the main KillerBee program
	cd /usr/include
	wget https://gist.github.com/ry/208354/archive/ba55a00d134b5f25ee82dd9e1a085ca0c247daaf.zip
	unzip ba55a00d134b5f25ee82dd9e1a085ca0c247daaf.zip
	rm ba55a00d134b5f25ee82dd9e1a085ca0c247daaf.zip
	cd "208354-ba55a00d134b5f25ee82dd9e1a085ca0c247daaf"
	mv gcrypt.h /usr/include
	cd /usr/include 
	rmdir "208354-ba55a00d134b5f25ee82dd9e1a085ca0c247daaf"

	pip3 install python-dev-tools
	pip3 install pygcrypt
	pip3 install pyusb
	pip3 install pycrypto
	pip3 install pyserial
	
	
	
	
####################################### OPTION 9
	elif [ $Selection = "9" ]; then  
		
		while true  
  		do 
  			clear
  			
  			echo "Which tool would you like to run? (THIS OPTION IS STILL IN ALPHA)"
  			echo "" 
  			echo ""
  			
  			echo "0 -> Exit"
		  	echo "1 -> Anon-SMS (Text Message Spoofing)"
		  	echo "2 -> DotDotPwn (Web Directory Traversal/Fuzzing)"
		  	echo "3 -> RouterSploit (Router Hacking)"
		  	echo "4 -> Brute-Forcer-Login (Login Bypass) STILL BEING CONFIGURED"
		  	echo "5 -> IPGeolocation (IP Trakcer)"
		  	echo "6 -> Nikto (Web Appication Vulnerability Scannner) Comes installed on the latest Kali by default"
		  	echo "7 -> PhoneInFoga (Phone Number LookUp Tool)"
		  	echo "8 -> Venom (Payload Generation Tool)"
		  	echo "9 -> ExifTool (Meta Data Extracton Tool)"
			echo "10 -> WifiTap (Wifi Injection Tool"
			echo "11 -> KillerBee (Zigbee tool anaylzer (Higher level bluetooth devices like smart homes))"
  
  			echo "" 
  			echo "" 
  			
		  	read -p "Enter in your Selection now" Selection2
		  	
		  	
		  	
		  	############ Exit
		  	if [ $Selection2 = "0" ]; then 
		  	
		  		echo "Exiting this option now."
		  		break
		  		
		  		
		  	############ Anon-SMS
		  	elif [ $Selection2 = "1" ]; then 
		  	
		  		while true 
		  		do 
					clear
					
		  			read -p "Do you have Anon-SMS installed Y/n?" Tool1
		  			
		  			if [ $Tool1 = "Y" ] || [ $Tool1 = "y" ]; then 
						
						cd /home/kali/Downloads/Anon-SMS && chmod +rwx Run.sh
						
						break
			
					elif [ $Tool1 = "N" ] || [ $Tool1 = "n" ]; then 
					
						cd /home/kali/Downloads/
						git clone https://github.com/HACK3RY2J/Anon-SMS
						cd /home/kali/Downloads/Anon-SMS && chmod +rwx Run.sh 

						break
			
					fi
		  			
		  		
		  		done 
		  	

		  	
		  		while true 
		  		do 	
		  			clear
		  		
		  			echo "Anon-SMS - Command list"
		  			echo "" 
		  			
		  			echo "man -> manual of the tool"
		  			echo "exit -> exits the current tool script so you can select another"
		  			echo "" 
		  			
		  			read -p "Please enter in the apporpriate command for the tool in order to launch it properlly now." AnonSMS
		  			
		  			if [ $AnonSMS = "man" ]; then 
		  			
		  				./Run.sh # This will run the default tool, which will show all the options you can run the progrm with from the terminal in the main program
		  				
		  				read -p "Hit Enter when you've read enough from the end user manual of the tool" p
		  				
		  			elif [ $AnonSMS = "exit" ]; then 
		  				
		  				echo "Exiting tool now"
		  				cd /home/kali/Downloads/
		  				
		  				clear
		  				break
		  				
		  			else 
		  				
		  				./Run.sh $AnonSMS
		  				read -p "Hit Enter when ready" p	  			
		  			fi 
		  		
		  		done 
		  	
		  	############ DotDotPwn
		  	elif [ $Selection2 = "2" ]; then 
		  	
		  		while true 
		  		do 
					clear
					
		  			read -p "Do you have DotDotPwn installed Y/n?" Tool2
		  			
		  			if [ $Tool2 = "Y" ] || [ $Tool2 = "y" ]; then 
						
						cd /home/kali/Downloads/dotdotpwn && chmod +rwx dotdotpwn.pl
						
						break
			
					elif [ $Tool2 = "N" ] || [ $Tool2 = "n" ]; then 
					
						cd /home/kali/Downloads/
						git clone https://github.com/wireghoul/dotdotpwn
						cd /home/kali/Downloads/dotdotpwn&& chmod +rwx dotdotpwn.pl

						break
			
					fi
		  			
		  		
		  		done 
		  	

		  	
		  		while true 
		  		do 	
		  			clear
		  		
		  			echo "DotDotPwn - Command list"
		  			echo "" 
		  			
		  			echo "man -> manual of the tool"
		  			echo "exit -> exits the current tool script so you can select another"
		  			echo "" 
		  			
		  			read -p "Please enter in the apporpriate command for the tool in order to launch it properlly now." DotDotPwn
		  			
		  			if [ $DotDotPwn = "man" ]; then 
		  			
		  				./dotdotpwn.pl # This will run the default tool, which will show all the options you can run the progrm with from the terminal in the main program
		  				
		  				read -p "Hit Enter when you've read enough from the end user manual of the tool" p
		  				
		  			elif [ $DotDotPwn = "exit" ]; then 
		  				
		  				echo "Exiting tool now"
		  				cd /home/kali/Downloads/
		  				
		  				clear
		  				break
		  				
		  			else 
		  				
		  				./dotdotpwn $DotDotPwn
		  				read -p "Hit Enter when ready" p	  			
		  			fi 
		  		
		  		done 
		  	
		  	
		  	############ RouterSploit
		  	elif [ $Selection2 = "3" ]; then 
		  	
		  		while true 
		  		do 
					clear
					
		  			read -p "Do you have RouterSploit installed Y/n?" Tool3
		  			
		  			if [ $Tool3 = "Y" ] || [ $Tool3 = "y" ]; then 
						
						cd /home/kali/Downloads/routersploit && chmod +rwx rsf.py
						
						break
			
					elif [ $Tool3 = "N" ] || [ $Tool3 = "n" ]; then 
					
						cd /home/kali/Downloads/
						git clone https://github.com/threat9/routersploit
						cd /home/kali/Downloads/routersploit && chmod +rwx rsf.py

						break
			
					fi
		  			
		  		
		  		done 
		  	

		  	
		  		while true 
		  		do 	
		  			clear
		  		
		  			echo "RouterSploit - Command list"
		  			echo "" 
		  			
		  			echo "man -> manual of the tool (USE THIS OPTION TO RUN THE TOOL AS IT'S A SEPARATE COMMAND LINE"
		  			echo "exit -> exits the current tool script so you can select another"
		  			echo "" 
		  			
		  			read -p "Please enter in the apporpriate command for the tool in order to launch it properlly now." RouterSPloit
		  			
		  			if [ $RouterSPloit = "man" ]; then 
		  			
		  				./rsf.py # This will run the default tool, which will show all the options you can run the progrm with from the terminal in the main program
		  				
		  				read -p "Hit Enter when you've read enough from the end user manual of the tool" p
		  				
		  			elif [ $RouterSPloit = "exit" ]; then 
		  				
		  				echo "Exiting tool now"
		  				cd /home/kali/Downloads/
		  				
		  				clear
		  				break
		  				
		  			else 
		  				
		  				./rsf.py $RouterSPloit
		  				read -p "Hit Enter when ready" p	  			
		  			fi 
		  		
		  		done 
		  	
		  	
		  	############ BruteForcer Login
		  	elif [ $Selection2 = "4" ]; then 
		  	
		  		while true 
		  		do 
					clear
					
		  			read -p "Do you have BruteForcer Login installed Y/n?" Tool4
		  			
		  			if [ $Tool4 = "Y" ] || [ $Tool4 = "y" ]; then 
						
						cd /home/kali/Downloads/Brute-Force-Login/app && chmod +rwx * 
						
						break
			
					elif [ $Tool4 = "N" ] || [ $Tool4 = "n" ]; then 
					
						cd /home/kali/Downloads/
						git clone https://github.com/Sanix-Darker/Brute-Force-Login
						cd /home/kali/Downloads/Brute-Force-Login/app && chmod +rwx *   

						break
			
					fi
		  			
		  		
		  		done 
		  	

		  	
		  		while true 
		  		do 	
		  			clear
		  		
		  			echo "BruteForcer Login - Command list"
		  			echo "" 
		  			
		  			echo "man -> manual of the tool"
		  			echo "exit -> exits the current tool script so you can select another"
		  			echo "" 
		  			
		  			read -p "Please enter in the apporpriate command for the tool in order to launch it properlly now." BruteForce
		  			
		  			if [ $BruteForce = "man" ]; then 
		  			
		  				./main.py # This will run the default tool, which will show all the options you can run the progrm with from the terminal in the main program
		  				
		  				read -p "Hit Enter when you've read enough from the end user manual of the tool" p
		  				
		  			elif [ $BruteForce = "exit" ]; then 
		  				
		  				echo "Exiting tool now"
		  				cd /home/kali/Downloads/
		  				
		  				clear
		  				break
		  				
		  			else 
		  				
		  				./main.py $BruteForce
		  				read -p "Hit Enter when ready" p	  			
		  			fi 
		  		
		  		done 
		  	
		  	
		  	############ IPGeoLocation
		  	elif [ $Selection2 = "5" ]; then 
	
		  		while true 
		  		do 
					clear
					
		  			read -p "Do you have IPGeolocation installed Y/n?" Tool5
		  			
		  			if [ $Tool5 = "Y" ] || [ $Tool5 = "y" ]; then 
						
						cd /home/kali/Downloads/IPGeoLocation && chmod +rwx ipgeolocation.py
						
						break
			
					elif [ $Tool5 = "N" ] || [ $Tool5 = "n" ]; then 
					
						cd /home/kali/Downloads/
						git clone https://github.com/maldevel/IPGeoLocation
						cd /home/kali/Downloads/IPGeoLocation && chmod +rwx ipgeolocation.py

						break
			
					fi
		  			
		  		
		  		done 
		  	

		  	
		  		while true 
		  		do 	
		  			clear
		  		
		  			echo "IPGeoLocation - Command list"
		  			echo "" 
		  			
		  			echo "man -> manual of the tool"
		  			echo "exit -> exits the current tool script so you can select another"
		  			echo "" 
		  			
		  			read -p "Please enter in the apporpriate command for the tool in order to launch it properlly now." IPLocate
		  			
		  			if [ $IPLocate = "man" ]; then 
		  			
		  				./ipgeolocation.py # This will run the default tool, which will show all the options you can run the progrm with from the terminal in the main program
		  				
		  				read -p "Hit Enter when you've read enough from the end user manual of the tool" p
		  				
		  			elif [ $IPLocate = "exit" ]; then 
		  				
		  				echo "Exiting tool now"
		  				cd /home/kali/Downloads/
		  				
		  				clear
		  				break
		  				
		  			else 
		  				
		  				./ipgeolocation.py $IPLocate
		  				read -p "Hit Enter when ready" p	  			
		  			fi 
		  		
		  		done 
		  	

		  	
		  	############ Nikto 
		  	elif [ $Selection2 = "6" ]; then 
		  	
		  		while true 
		  		do 
					clear
					
		  			read -p "Do you have Nikto installed Y/n?" Tool6
		  			
		  			if [ $Tool6 = "Y" ] || [ $Tool6 = "y" ]; then 
						
						cd /home/kali/Downloads/nikto/program  && chmod +rwx nikto.pl
						
						break
			
					elif [ $Tool6 = "N" ] || [ $Tool6 = "n" ]; then 
					
						cd /home/kali/Downloads/
						git clone https://github.com/sullo/nikto
						cd /home/kali/Downloads/nikto/program && chmod +rwx nikto.pl

						break
			
					fi
		  			
		  		
		  		done 
		  	

		  	
		  		while true 
		  		do 	
		  			clear
		  		
		  			echo "Nikto - Command list"
		  			echo "" 
		  			
		  			echo "man -> manual of the tool"
		  			echo "exit -> exits the current tool script so you can select another"
		  			echo "" 
		  			
		  			read -p "Please enter in the apporpriate command for the tool in order to launch it properlly now." Nikto
		  			
		  			if [ $Nikto = "man" ]; then 
		  			
		  				./nikto.pl # This will run the default tool, which will show all the options you can run the progrm with from the terminal in the main program
		  				
		  				read -p "Hit Enter when you've read enough from the end user manual of the tool" p
		  				
		  			elif [ $Nikto = "exit" ]; then 
		  				
		  				echo "Exiting tool now"
		  				cd /home/kali/Downloads/
		  				
		  				clear
		  				break
		  				
		  			else 
		  				
		  				./nikto.pl $Nikto
		  				read -p "Hit Enter when ready" p	  			
		  			fi 
		  		
		  		done 
		  	
		  	
		  	############ PhoneInFoga 
		  	elif [ $Selection2 = "7" ]; then 
		  	
		  		while true 
		  		do 
					clear
					
		  			read -p "Do you have PhoneInFoga installed Y/n?" Tool7
		  			
		  			if [ $Tool7 = "Y" ] || [ $Tool7 = "y" ]; then 
						
						cd /home/kali/Downloads/PhoneInfoga && chmod +rwx * && cp config.example.py config.py && 
						
						break
			
					elif [ $Tool7 = "N" ] || [ $Tool7 = "n" ]; then 
					
						cd /home/kali/Downloads/
						git clone https://github.com/abhinavkavuri/PhoneInfoga
						cd /home/kali/Downloads/PhoneInfoga && chmod +rwx * && cp config.example.py config.py && 

						break
			
					fi
		  			
		  		
		  		done 
		  	

		  	
		  		while true 
		  		do 	
		  			clear
		  		
		  			echo "PhoneInFoga - Command list"
		  			echo "" 
		  			
		  			echo "man -> manual of the tool"
		  			echo "exit -> exits the current tool script so you can select another"
		  			echo "" 
		  			
		  			read -p "Please enter in the apporpriate command for the tool in order to launch it properlly now." PhoneInFoga
		  			
		  			if [ $PhoneInFoga = "man" ]; then 
		  			
		  				./phoneinfoga.py # This will run the default tool, which will show all the options you can run the progrm with from the terminal in the main program
		  				
		  				read -p "Hit Enter when you've read enough from the end user manual of the tool" p
		  				
		  			elif [ $PhoneInFoga = "exit" ]; then 
		  				
		  				echo "Exiting tool now"
		  				cd /home/kali/Downloads/
		  				
		  				clear
		  				break
		  				
		  			else 
		  				
		  				./phoneinfoga.py $PhoneInFoga
		  				read -p "Hit Enter when ready" p	  			
		  			fi 
		  		
		  		done 
		  	
		  	
		  	############ Venom
		  	elif [ $Selection2 = "8" ]; then 
		  	
		  		while true 
		  		do 
					clear
					
		  			read -p "Do you have Venom installed Y/n?" Tool8
		  			
		  			if [ $Tool8 = "Y" ] || [ $Tool8 = "y" ]; then 
						
						cd /home/kali/Downloads/venom && chmod +rwx venom.sh
						
						break
			
					elif [ $Tool8 = "N" ] || [ $Tool8 = "n" ]; then 
					
						cd /home/kali/Downloads/
						git clone https://github.com/r00t-3xp10it/venom
						cd /home/kali/Downloads/venom && chmod +rwx venom.sh 

						break
			
					fi
		  			
		  		
		  		done 
		  	

		  	
		  		while true 
		  		do 	
		  			clear
		  		
		  			echo "Venom - Command list"
		  			echo "" 
		  			
		  			echo "man -> manual of the tool"
		  			echo "exit -> exits the current tool script so you can select another"
		  			echo "" 
		  			
		  			read -p "Please enter in the apporpriate command for the tool in order to launch it properlly now." Venom
		  			
		  			if [ $Venom = "man" ]; then 
		  			
		  				./venom.sh # This will run the default tool, which will show all the options you can run the progrm with from the terminal in the main program
		  				
		  				read -p "Hit Enter when you've read enough from the end user manual of the tool" p
		  				
		  			elif [ $Venom = "exit" ]; then 
		  				
		  				echo "Exiting tool now"
		  				cd /home/kali/Downloads/
		  				
		  				clear
		  				break
		  				
		  			else 
		  				
		  				./venom $Venom
		  				read -p "Hit Enter when ready" p	  			
		  			fi 
		  		
		  		done 
		  	
		  	############ ExifTool
		  	elif [ $Selection2 = "9" ]; then 
		  	
		  		while true 
		  		do 
					clear
					
		  			read -p "Do you have ExifTool installed Y/n?" Tool9
		  			
		  			if [ $Tool9 = "Y" ] || [ $Tool9 = "y" ]; then 
						
						cd /home/kali/Downloads/exiftool && chmod +rwx exiftool
						
						break
			
					elif [ $Tool9 = "N" ] || [ $Tool9 = "n" ]; then 
					
						cd /home/kali/Downloads/
						git clone https://github.com/exiftool/exiftool
						cd /home/kali/Downloads/exiftool && chmod +rwx exiftool

						break
			
					fi
		  			
		  		
		  		done 
		  	

		  	
		  		while true 
		  		do 	
		  			clear
		  		
		  			echo "ExifTool - Command list MOVE/SAVE ANY PHOTOS TO /home/kali/Downloads/exiftool"
		  			echo "" 
		  			
		  			echo "man -> manual of the tool"
		  			echo "exit -> exits the current tool script so you can select another"
		  			echo "" 
		  			
		  			read -p "Please enter in the apporpriate command for the tool in order to launch it properlly now." ExifTool
		  			
		  			if [ $ExifTool = "man" ]; then 
		  			
		  				./exiftool # This will run the default tool, which will show all the options you can run the progrm with from the terminal in the main program
		  				
		  				read -p "Hit Enter when you've read enough from the end user manual of the tool" p
		  				
		  			elif [ $ExifTool = "exit" ]; then 
		  				
		  				echo "Exiting tool now"
		  				cd /home/kali/Downloads/
		  				
		  				clear
		  				break
		  				
		  			else 
		  				
		  				./exiftool $ExifTool
		  				read -p "Hit Enter when ready" p	  			
		  			fi 
		  		
		  		done 
		  	
		  		
		  	 

			############ WifiTap
		  	elif [ $Selection2 = "10" ]; then 
		  	
		  		while true 
		  		do 
					clear
					
		  			read -p "Do you have WifiTap installed Y/n? " Tool10
		  			
		  			if [ $Tool10 = "Y" ] || [ $Tool10 = "y" ]; then 
						
						cd /home/kali/Downloads/wifitap && chmod +rwx * 
						
						break
			
					elif [ $Tool10 = "N" ] || [ $Tool10 = "n" ]; then 
					
						cd /home/kali/Downloads/
						git clone https://github.com/GDSSecurity/wifitap
						cd /home/kali/Downloads/wifitap && chmod +rwx *

						break
			
					fi
		  			
		  		
		  		done 
		  	

		  	
		  		while true 
		  		do 	
		  			clear
		  		
		  			echo "WifiTap - Command list: Check the the folder at -> /home/kali/Downloads/wifitap (TOOL HAS MULTIPLE RUN OPTIONS YOU CAN RUN OUTSIDE OF THIS PROGRAM)"
		  			echo "" 
		  			
		  			echo "man -> manual of the tool"
		  			echo "exit -> exits the current tool script so you can select another"
		  			echo "" 
		  			
		  			read -p "Please enter in the apporpriate command for the tool in order to launch it properlly now." WifiTap
		  			
		  			if [ $WifiTap = "man" ]; then 
		  			
		  				python3 wifitap.py # This will run the default tool, which will show all the options you can run the progrm with from the terminal in the main program
		  				
		  				read -p "Hit Enter when you've read enough from the end user manual of the tool" p
		  				
		  			elif [ $WifiTap = "exit" ]; then 
		  				
		  				echo "Exiting tool now"
		  				cd /home/kali/Downloads/
		  				
		  				clear
		  				break
		  				
		  			else 
		  				
		  				echo $WifiTap | python3 wifitap.py
		  				read -p "Hit Enter when ready" p	  			
		  			fi 
		  		
		  		done 
		  	
		  		
		  	 


			############ KillerBee
		  	elif [ $Selection2 = "11" ]; then 
		  	
		  		while true 
		  		do 
					clear
					
		  			read -p "Do you have KillerBee installed Y/n? " Tool11
		  			
		  			if [ $Tool11 = "Y" ] || [ $Tool11 = "y" ]; then 
						
						cd /home/kali/Downloads/killerbee/killerbee && chmod +rwx * 
						
						break
			
					elif [ $Tool11 = "N" ] || [ $Tool11 = "n" ]; then 
					
						#This is going to run the main script to both setup and run the killer bee program

						cd /usr/include
						wget https://gist.github.com/ry/208354/archive/ba55a00d134b5f25ee82dd9e1a085ca0c247daaf.zip
						unzip ba55a00d134b5f25ee82dd9e1a085ca0c247daaf.zip
						rm ba55a00d134b5f25ee82dd9e1a085ca0c247daaf.zip
						cd "208354-ba55a00d134b5f25ee82dd9e1a085ca0c247daaf"
						mv gcrypt.h /usr/include
						cd /usr/include 
						rmdir "208354-ba55a00d134b5f25ee82dd9e1a085ca0c247daaf"
						

						cd /home/kali/Downloads/
						git clone https://github.com/riverloopsec/killerbee
						cd /home/kali/Downloads/killerbee

						pip3 install python-dev-tools
						pip3 install pygcrypt
						pip3 install pyusb
						pip3 install pycrypto
						pip3 install pyserial

						cd /home/kali/Downloads/killerbee/killerbee

						

						break
			
					fi
		  			
		  		
		  		done 
		  	

		  	
		  		while true 
		  		do 	
		  			clear
		  		
		  			echo "KillerBee - Command list:"
		  			echo "" 
		  			
		  			echo "man -> manual of the tool"
		  			echo "exit -> exits the current tool script so you can select another"
		  			echo "" 
		  			
		  			read -p "Please enter in the apporpriate command for the tool in order to launch it properlly now." KillerBee
		  			
		  			if [ $KillerBee = "man" ]; then 
		  			
		  				python3 zigbeedecode.py # This will run the default tool, which will show all the options you can run the progrm with from the terminal in the main program
		  				
		  				read -p "Hit Enter when you've read enough from the end user manual of the tool" p
		  				
		  			elif [ $KillerBee = "exit" ]; then 
		  				
		  				echo "Exiting tool now"
		  				cd /home/kali/Downloads/
		  				
		  				clear
		  				break
		  				
		  			else 
		  				
		  				echo $KillerBee | python3 zigbeedecode.py
		  				read -p "Hit Enter when ready" p	  			
		  			fi 
		  		
		  		done 
		  	
		  		
		  	fi 
		  	
		done 
		
		
	####################################### OPTION 10 Recommended Installs
	elif [ $Selection = "10" ]; then 
	 	
		clear
		
		while true
		do 
			echo "Would you like to upgrade the system Y/n?"
			echo "" 
			
			read -p "" Upgrade
			
			if [ $Upgrade = "Y" ] || [ $Upgrade = "y" ]; then 
			
				apt-get upgrade -y 
				break
			
			elif [ $Upgrade = "N" ] || [ $Upgrade = "n" ]; then 
			
				break
			
			fi
		
		done
		
		
		apt-get install httrack -y
		apt-get install gobuster -y
		apt-get install gdb-minimal -y 
		apt-get install bc -y
		apt-get install bluetooth -y
		apt-get install dkms -y
		apt-get install bettercap -y
		apt-get install bluesnarfer -y
		apt-get install blueranger -y
		apt-get install btscanner -y
		apt-get install emailharvester -y 
		apt-get install sendmail -y
		apt --fix-broken install -y
		apt-get install default-jre -y 
		apt-get install openjdk-17-jdk -y
	
		mkdir -p /dev/bluetooth/rfcomm
		mknod -m 666 /dev/bluetooth/rfcomm/0 c 216 0
		mknod --mode=666 /dev/rfcomm0 c 216 0 
		service bluetooth start
		
		
		apt-get install tor -y

		apt-get install seahorse -y #This is going to install a password manager and updater in our linux system
		apt-get install nodejs -y #This is going to allow us to work with nodejs programs
		apt-get install inviteflood -y #This is going to allow us to flood the SIP rpotocol
		apt-get install dnsspoof -y #This is going to allow us to sniff out network traffic data as the main gateway 
		apt-get install maltego -y #This allow us to utilize various PI search queires through a main GUI interface
		apt-get install p0f -y  #This is used for passive recon against web server applications to stay more anonymous than nmap
		apt-get install amap -y #This is a more service scanning oriented to to discover the pinpoint services that are running on a system which might come up a bit vague compared to nmap
		apt-get install rkhunter -y #This allow us to check if ther ehas been a rootkit installed on the system
		apt-get install lynis -y #This is used to run a manual vulnerabiltiy chekc against either a local system or a rmeoe system via an executable we can pipe over to the target remotely  
		apt-get install cisco-global-exploiter -y #This is used to check cisco devices we locate on a etwork for any and all types of vulnerabilties 
		apt-get install oscanner -y # This allow us to scan against a target system and check whether or not it is running an oracle based database on it as well as if the databse runing on it has any vulnerbailtiies of i'ts own
		apt-get install sfuzz -y #This allows us to scan for bugs that might exist in a program
		apt-get install zzuf -y #This is used n order to test and pipe input for fuzzing into programs for bug hunting/applicaiton penetration testing
		apt-get install hostapd -y #This allows us to create out own access point on our NIC card that operates wirelessly
		apt-get install wifiphisher -y #This is going to allow us to set up jammming exploits on access points
		apt-get install wifi-honey -y #This is a network monitoring tool for a honey pot in order to track attack patterns on a network, as well as monitor client activity on the network
		apt-get install redfang -y #This allows us to blueborne bluetooth devices even if they aren't in discovery mode
		apt-get install bluelog -y #This is going to allow us to both scan for bluetooth devices, as well as keep a genral log of our mainfindings automatically apt-get install parsero #This program is used to fetch the robot.txt file from a web application
		apt-get install rtgen -y #This allows us to generate rainbow tabels for faster password cracking (REQUIRES DISK USAGE/SPEED/SPACE)
		apt-get install ltrace -y #This is goinng to allow us to trace the function calls on a binary level within other programs THIS IS FOR LIBRARY FUNCTION CALLS  WTHIN THE PROGRAM
		apt-get install strace -y #This is goinng to allow us to trace the function calls on a binary level within other programs THIS IS FOR SYSTEM FUNCTION CALLS  WTHIN THE PROGRAM

		#This is going to check and fix any and all broken installs on the system
		apt --fix-broken install -y

		clear
		
		while true
		do 
			
			echo "Would you like to run the tor proxy? Y/n?"
			echo "" 
			
			read -p "" torproxy
			
			if [ $torproxy = "Y" ] || [ $torproxy = "y" ]; then 
			
				echo "READ THESE INSTRUCTIONS VERY CAREFULLY IF YOU WISH TO RUN TOR PROXY CHAINS"
				echo ""
			
				echo "Open another terminal session via ctrl+shift+n"
				echo ""
		
				echo "While you're in the other shell run the following command -> nano /etc/proxychains4.conf"
				echo ""
		
				echo "While the fiile is open, scroll down until you find a row a text with (dynamic_chain), and remove the # sign next to it to remove the comment"
				echo ""
		
				echo "Now look for the (static_chain) line of text and add a # symbol next to it to comment it out"
				echo ""
						
				echo "Now scroll down to the very end of the file where a line says (socks4) On the line bellow it add another called (socks5 127.0.0.1 9050) to configure tor"
				echo ""
		
				echo "Hit Ctrl+O, then hit enter, then hit Ctrl-X to close the file"
				echo ""
				
				echo "After Tor Service is setup, Run the command (proxychains) along with any network servie: browser, nmap, etc, and it will route through tor service"
				echo "EX ->: proxychains nmap -A google.com" 
				echo "EX2 ->: proxychains firefox dnsleaktest.com (This site is extremely good to see if tor services is changing your IP address)"
				echo "" 
				
				echo "Hit enter when you've done all this, and the tor service will execute"
				echo ""
				
				read -p "" p
				service tor start 
				
				break
			
			elif [ $torproxy = "N" ] || [ $torproxy = "n" ]; then 
			
				break
			
			fi
		
		done
		
		clear
		
		echo "All basic installations are complete ^_^ Hit Enter"
		
		read -p "" p

		read -p "" p
		
		################## VSCode Install
		clear 
		
		echo "Hover over to this link here to download it -> https://code.visualstudio.com/docs/?dv=linux64_deb"
		echo ""
		
		echo "Hit enter once you've done so and it's downloaded ^_^"
		echo ""
		
		read -p "" p
		
		cd /home/kali/Downloads
		dpkg -i code*
		
		echo "VsCode is now a destkop executable that can be searched from the start menu."
		echo "To run it in the terminal run it as NON-ROOT user, and enter -> code "
				
		
		################## Telegram Install
		clear 
		
		echo "Hover over to this link here to download it -> https://telegram.org/dl/desktop/linux"
		echo ""
				
		echo "If you want to continue the script after telegram executes simply close Telegram manually. The script will pick up where it left off from"
		echo "Hit enter when you have read this and it's downloaded ^_^"
		
		read -p "" p
		
		cd /home/kali/Downloads
		xz -df tsetup*
		tar -xvf tsetup*
		cd Telegram
		chmod +rwx Telegram
		./Telegram --register-app
		
		echo "Telegram is now a destkop executable that can be searched from the start menu"			
		
		
		
		################# Bettercap and Aircrack-ng Drivers install
		clear 
		
		cd /home/kali/Downloads
		
		apt install golang git build-essential libpcap-dev libusb-1.0-0-dev libnetfilter-queue-dev -y
		git clone https://github.com/bettercap/bettercap.git 
		cd bettercap
		make build
		sudo make install
		cd ..
		git clone https://github.com/bettercap/caplets.git
		cd caplets
		make install
		
		clear
		 
		cd /home/kali/Downloads
		git clone https://github.com/morrownr/8812au-20210629 
		cd /home/kali/Downloads/8812au-20210629
		chmod +rwx dkms.conf dkms-make.sh edit-options.sh Kconfig 8812au.conf install-driver.sh remove-driver.sh 
		
		clear
		
		echo "If the prompts give you the option to hit either y/n responses make sure to ALWAYS HIT NO. Hit Enter if you FULLY understood this"
		read -p "" p
		
		./remove-driver.sh
		./install-driver.sh
	

	####################################### OPTION 11 PYTHON3 GRAYHAT/BLACKHAT INSTALL MODULES
	elif [ $Selection = "11" ]; then 

		#These are a series of pip commands that will install all the needed python3 modules for blackhat and grayhat penetration testing for the language 
		python -m pip install pywin32 #This allows us to interact with the windows 32 api on a windows kernel
		pip3 install netaddr
		pip3 install paramiko
		pip3 install pycrypto
		python -m pip install cryptography 
        pip3 install gmpy
        pip3 install rsa
        pip3 install uiautomation
        pip3 install selenium
        pip3 install chromdriver_installer
        pip3 install github3.py
        pip3 install Flask
        pip3 install Flask-Cors
        pip3 install mysql-connector-python
        pip3 install pyLoRa
        pip3 install circuitpython-nrf24101
		
        apt-get install python3-pyqt5 #This allow you to make graphical user interfaces in Python3
        pip3 install arduino-python3 #This will give you the abiltiy to work with then ardunio breadboard library in python3

#Else if the the wrong input is set into the code it will clear the main terminal window and then run the main output for the first section of the code again
else 

	clear

fi #This is the end of the main if statement

done #THis is the end of the main while loop statement
}

#This is going to call our main function that will control an drun the entire script 
main 

