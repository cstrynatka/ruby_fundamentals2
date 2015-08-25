require 'sinatra'

get '/' do 
	"Main Menu"
end

get '/' do 
	"Hello world"
end

get '/' do
	erb :index
end

# inside server.rb
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

clients.put(response)