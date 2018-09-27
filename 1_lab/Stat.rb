class Stat

  def file(file, line)
  
    data = File.read(file)[line - 1] {|i| i.to_f}
  
  end

  def compute
  
    mean = (data.max + data.min) / 2.0
  
    puts 'Выберите действие:
      1 - Максимальное значени
      2 - Минимальное значение
      3 - Среднее значение
      4 - Исправленную выборочную дисперсию'
    
    vb = gets.chomp
    
    case vb
    
    when '1'
      data.max
    
    when '2'
      data.min
    
    when '3'
      mean 
    
    when '4'
      sum = 0.0
      for i in data do
        sum += (i - mean) * 2
      end
      sum / (data.length - 1)
    end
  
  end

end

path = '../doc/naselenie.csv'
obj = Stat.new.file(path, 2)
Stat.new.compute
