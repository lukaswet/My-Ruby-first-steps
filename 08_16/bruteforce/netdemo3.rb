require 'net/http'
require 'uri'

uri = URI.parse 'http://rubyschool.us/router'
response = Net::HTTP.post_form uri, :login => "aaa", :password => "bbb"
puts response