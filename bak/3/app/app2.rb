#encoding: cp866
print "������ ��� ���: "    #���訩 ���?���
name = gets.chomp
name.strip!
name.capitalize!
puts "��ࠢ����, #{name}"
puts "� ��襬 ����� #{name.length} �㪢"

puts ""

print "������ ��� ���: "    #��㣨� ���?���
name = gets.strip.capitalize
puts "��� �����:\t\t #{name}"
puts "�㪢 � ��襬 �����:\t #{name.length}"
