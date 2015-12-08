require 'socket'

host = 'localhost'     # The web server
port = 2010                       # Default HTTP port
path = "index.html"                 # The file we want 

# This is the HTTP request we send to fetch a file
request = "GET index.html HTTP/1.0\r\n\r\n"

socket = TCPSocket.open('localhost',20001)  # Connect to server
socket.print(request)               # Send request
response = socket.read              # Read complete response
# Split response at first blank line into headers and body
headers,body = response.split("\r\n\r\n", 2) 
print body                          # And display it