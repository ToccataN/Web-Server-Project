require "socket"  
dts = TCPServer.new('localhost', 20001)  
loop do  
  Thread.start(dts.accept) do |s|  
    request= s.gets
    trim= request.gsub(/GET /, '').gsub(/\ HTTP.*/, '')
    filename= trim.chomp
    
    

      if File.exist?(filename)
        body = (File.open(filename, 'r')).read
        head = "HTTP/1.0 200 OK\nContent-Length: #{body.length}\r\n\r\n"
      else
    	print "404 File Not Found"
      end
    
    puts body
    puts(head)
    s.close
    

  end  
end  