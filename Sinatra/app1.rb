require 'sinatra'

get "/" do
	erb :index
end

post "/" do
	@login = params[:aaa]
	@password = params[:bbb]

	if @login == 'admin' &&  @password == 'secret'
		erb :welcome
	else
		@access = "Acess denied!"
		erb :index
	end
end





# get "/contacts" do
# 	"Phone: 12345"
# end