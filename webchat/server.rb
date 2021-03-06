require 'eventmachine'
require 'em-websocket'

class ChatConnection < EventMachine::WebSocket::Connection

		attr_accessor :name

		def initialize( opts= {} )
				super
				onopen { on_open }
				onmessage { |message| on_message(message) }
				onclose { on_close }
		end

		def on_open
		end

		def on_message(message)
						if name
								Chat.send_message_to_all message, self
						else
								self.name = message
								Chat.add_connection self					
						end				
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
				send_message_to_all "В чат зайшов користувач #{connection.name}"
		end

		def delete_connection(connection)
				CONNECTION.delete connection
				send_message_to_all "користувач #{connection.name} покинув чат"			
		end	

		def send_message_to_all(message, connection=nil)
				CONNECTION.each do |con|
					if connection
						con.send "#{connection.name}:  #{message}"
					else	
						con.send message
					end	
				end	
		end
end


EM.run do 
		EM.start_server '0.0.0.0', '8080', ChatConnection
end	