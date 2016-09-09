puts 'Enter your age: '
age = STDIN.gets.to_i

# if age >= 19 && age <= 40  # Найелементарніший спосіб

# if age.between?(19, 40) # Хороший спосіб

if (19..40).include?(age)
    puts 'Good age'
else
    puts 'So so'
end