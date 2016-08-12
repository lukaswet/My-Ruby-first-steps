# Спосіб 1 (не зручно, коли багато параметрів)

if @username == ''
	@error = "Введите имя"
	return erb :visit
end


# Спосіб 2 (Вокористати ХЕШ)

hh = { 	:username => 'Введите имя',
	  	:phone => 'Введите номер телефона',
	  	:datetime => 'Введите дату и время'	}

		hh.each do |key, value|
			if params[key] == ''
				@error = hh[key]
				return erb :visit
			end
		end


# Спосіб 3 !!! Найкращий варіант:

hh = { 	:username => 'Введите имя',
		:phone => 'Введите телефон',
		:datetime => 'Введите дату и время' }

	@error = hh.select {|key,_| params[key] == ""}.values.join(", ")

	if @error != ''
		return erb :visit
	end