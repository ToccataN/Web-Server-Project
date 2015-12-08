require 'socket'      # Sockets are in standard library

hostname = 'localhost'
port = 3000

s = TCPSocket.open('localhost', 3010)

while line = s.gets   # Read lines from the socket
  puts line.chop      # And print with platform line terminator
end
s.close               # Close the socket when done