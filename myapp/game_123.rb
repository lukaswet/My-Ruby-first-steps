print "(R)ock, (S)cissors, (P)aper?  "
s = gets.strip.capitalize

if s == "R"
	user_choice = :rock
elsif s == "S"
	user_choice = :scissors
elsif s == "P"
	user_choice = :paper
else
	puts "Can't understand" 
	exit	 			 			 			 	
end 

arr = [:rock, :scissors, :paper]
comp_choice = arr[rand(0..2)]

if user_choice == comp_choice
	puts "Nobody wins"
elsif user_choice == :rock && comp_choice == :scissors
	puts "User win. Computer has (S)cissors"
elsif user_choice == :rock && comp_choice == :paper
	puts "Computer win. It has (P)aper"
elsif user_choice == :scissors && comp_choice == :rock
	puts "Computer win. It has (R)ock"
elsif user_choice == :scissors && comp_choice == :paper
	puts "User win. Computer has (P)aper"
elsif user_choice == :paper && comp_choice == :rock	
	puts "User win. Computer has (R)ock"
elsif user_choice == :paper && comp_choice == :scissors
	puts "Computer win. It has (S)cissors"																		
end	