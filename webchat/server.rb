require 'eventmachine'
require 'em-websocket'
require 'json'

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
				login = message[/auth\((.*)\)/,1]
				puts login
				if login
						self.name = login
						Chat.add_connection self
				else 
						if name
								Chat.send_message_to_all message, self
						else
								send_error 'Зареєструйтесь будь ласка auth(your_login_name)'						
						end			
				end		
		end

		def on_close
				Chat.delete_connection self
		end

		def send_error(error_message)
				send({ type: :error, message: error_message }.to_json)
		end

end	

module Chat
		CONNECTION = []

		module_function

		def add_connection(connection)
				CONNECTION.push connection
				send_message_to_all({ type: :joined, username: connection.name }.to_json)
		end

		def delete_connection(connection)
				CONNECTION.delete connection
				send_message_to_all "користувач #{connection.name} покинув чат"			
		end	

		def send_message_to_all(message, connection=nil)
				CONNECTION.each do |con|
					if connection
						msg = { type: chat_message, username: connection.name, message: message }
						con.send msg.to_json
					else	
						con.send message
					end	
				end	
		end
end


EM.run do 
		EM.start_server '0.0.0.0', '8080', ChatConnection
end	