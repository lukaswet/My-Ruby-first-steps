require 'sinatra'

get "/" do
	erb :index
end

post "/" do
	@user_name = params[:user_name]
	@phone = params[:phone]
	@date_time = params[:date_time]

	@title = "Thank you!"
	@message = "Dear #{@user_name}, we will be waiting for you at #{@date_time}"

	f = File.open "./public/users.txt", "a"
	f.write "\nUser: #{@user_name}, Phone: #{@phone}, Date and Time: #{@date_time}"
	f.close

	erb :message
end

get "/admin" do
	@title = "Admin"
	@usersfile = File.open "./public/users.txt", "r"
	@userlist = @usersfile.read
	while (@line = @usersfile.gets)
    		puts line
	end

	@usersfile.close

	erb :adminka
end