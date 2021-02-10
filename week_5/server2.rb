require 'socket'
socket = TCPSocket.new('localhost', 2345)
puts socket.gets
socket.puts "Sarah"
puts socket.gets
socket.close
