require 'socket'  
streamSock = TCPSocket.new( "localhost", 20000 )  
#streamSock.send( "Hello\n" )  
str = streamSock.recv( 100 )  
print str  
streamSock.close  