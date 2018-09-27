class Polin

def revers(string)

	split_string = string.split("")
	reversed = []
	string.size.times { reversed << split_string.pop }
	reversed.join

end

def Poli

	puts 'Введите первую строку: '
	str_1 = gets.chomp
	
	str_2 = str_1
	 
	if (revers(str_2) == str_1)
			puts "Строка #{str_1} является палиндромом"
	end
	
	if (revers(str_2) != str_1) 
			puts "Строка #{str_2} не является палиндромом"
	end

end
end

Polin.new.Poli
