usernames = ['Бубуська', 'Лукас']

$ -> 
	
	client = new WebSocket('ws://localhost:8080')
	client.onopen = ->
		console.log 'connected'
		client.send get_random_login()

	client.onmessage = (message) ->
		json = JSON.parse message.data
		switch json.type
			when 'error'
				add_entry_to_log json.message
			when 'chat_message'
				add_chat_message json
			when 'joined'
				add_entry_to_log "В чат зайшов користувач #{json.username}"	

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

	add_chat_message = (json) ->	
		add_entry_to_log "<i>#{json.username}:</i> #{json.message}"
				