usernames = ['Бубуська', 'Лукас']

$ -> 
	
	client = new WebSocket('ws://localhost:8080')
	client.onopen = ->
		console.log 'connected'
		client.send get_random_login()

	client.onmessage = (message) ->
		add_entry_to_log message.data

	$('#chat_input').keyup (e) ->
		if e.keyCode == 13
			message = $('#chat_input').val()	
			client.send message
			$('#chat_input').val ''	

	$chat_log = $('#chat_log')
	add_entry_to_log = (message) ->
		$chat_log.append " <div> #{message} </div> "

	get_random_login = ->
		usernames[Math.floor(Math.random()*usernames.length)]	
				