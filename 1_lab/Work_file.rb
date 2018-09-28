require 'csv'
class Work_file

def Work
  
    puts 'Выберите действие:
      1 - Максимальное значени
      2 - Минимальное значение
      3 - Среднее значение
      4 - Исправленную выборочную дисперсию'
    
    vb = gets.chomp
    
    case vb
    
    when '1'
		max = 0
		data = ''
		CSV.foreach('../doc/naselenie.csv') do |string|
		if max < string[1].to_f
			max = string[1].to_f
			data = string[0]
		end
	end
    
    when '2'
      	min = 99999999999
		data = ''
		CSV.foreach('../doc/naselenie.csv') do |string|
			if min < string[1].to_f
				min = string[1].to_f
				data = string[0]
			end
		end
	end
    
    when '3'
		CSV.foreach('../doc/naselenie.csv') do |string|
			sum += row[1].to_f
			count += 1
		end
		average = sum / count
    end
    
    when '4'
		arr = []
		CSV.foreach('../doc/naselenie.csv') do |row|
			array << row[1].to_f
		end
		avrg = arr.sum / arr.count
	end
	
end

Work_file.new.Work

