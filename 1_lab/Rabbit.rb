class Rabbit

def revers(mes)

	a = 1
	b = 1
	schet = 1
	
	while (mes >= schet) 
		
		c = a + b
		a = b
		b = c
		schet = schet + 1
	
	end
	
	c = c / 2
	puts "За #{mes} месяца(ев) пар кроликов стало #{c}"

end

def Rabb

	puts 'Введите кол-во месяцев: '
	mes = gets.chomp.to_i
	rez = revers(mes)
	puts rez
end
end

Rabbit.new.Rabb
