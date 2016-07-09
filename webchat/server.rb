require 'eventmachine'
require 'em-websocket'

class ChatConnection < EventMachine::WebSocket::Connection

		def initialize( opts= {} )
				super
				onopen { on_open }
				onmessage { |message| on_message(message) }
		end

		def on_open
				puts 'new connection created'
		end

		def on_message(message)
				puts message
		end

end	



EM.run do 
		EM.start_server '0.0.0.0', '8080', ChatConnection
end	