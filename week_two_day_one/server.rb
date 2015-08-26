require 'socket'

host = 'localhost' # 127.0.0.1
port = 2000

server = TCPServer.open(host, port)
puts "Server started on #{host}:#{port} ..."

loop do 
client = server.accept

lines = []
while (line = client.gets) && !line.chomp.empty?
	lines << line.chomp
end
puts lines

headers = []
headers << "HTTP/1.1 200 OK"

response = [headers.join("\r\n"), Time.now.ctime].join("\r\n\r\n")

response = "
<!DOCTYPE html>
<html>
<head>
<title>My first web server</title>
</head>
<body>
<h1>My first web server</h1>
<p>Oh hey, this is my first HTML response!</p>
</body>
</html>"

client.puts(response)

# clients.puts(headers.join('\r\n'))
# clients.puts(Time.now.ctime)
client.close
end