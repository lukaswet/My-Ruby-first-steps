require 'net/http'
require 'uri'

def is_wrong_password? password
	uri = URI.parse 'http://rubyschool.us/router'
	response = Net::HTTP.post_form(uri, :login => "admin", :password => password).body
	puts response.include? "denied"
end

puts is_wrong_password? "123123"