require 'socket'
require 'uri'

tcp_server = TCPServer.new('localhost', 9898 ) #starts listening on port 9898

loop do
  session = tcp_server.accept #creates the socket for biderectional comms
  session_request_line = session.gets #gets the start-line of the request, ommits optional headders that would be after the first line in HTTP reques

  STDERR.puts session_request_line #just to check server is working

  if session_request_line.include?("HTTP/1.1")
    puts "Its HTTP!!"
  else
    puts "no HTTP"
  end
  
end
