require 'eventmachine'
require 'em-websocket'

class ChatConnection < EventMachine::WebSocket::Connection

		def initialize( opts= {} )
				super
				onopen { on_open }
				onmessage { |message| on_message(message) }
				onclose { on_close }
		end

		def on_open
				Chat.add_connection self
		end

		def on_message(message)
				puts message
		end

		def on_close
				Chat.delete_connection self
		end

end	

module Chat
		CONNECTION = []

		module_function

		def add_connection(connection)
				CONNECTION.push connection
				puts 'new connection created'

		end

		def delete_connection(connection)
				CONNECTION.delete connection
				puts 'connection closed'				
		end	
end


EM.run do 
		EM.start_server '0.0.0.0', '8080', ChatConnection
end	