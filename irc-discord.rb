require 'socket'
require 'date'

clients = []

s = TCPServer.new 8080

loop do
	Thread.fork(s.accept) do |client|
		client.puts "Hello. world!\n"
		client.close
	end
end

