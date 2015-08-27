require 'sinatra'

get '/' do
	@time = Time.now.ctime
	@name = ['Mina', 'Julie', 'Ilia'].sample # .sample will pick out random item in array
	erb :index
end