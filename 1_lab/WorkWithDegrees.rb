class WorkWithDegrees
def Gr
  
  puts 'Введиет значение градусов: '
  gr = gets.chomp.to_f
  
  puts "Выберете шкалу (C | K | F): "
  sk = gets.chomp
  
  puts "Выберете шкалу в которую нужно перевести: " 
  sk_P = gets.chomp
  
  if(sk_P == "C" && sk == "C" || sk_P == "K" && sk == "K" || sk_P == "F" && sk == "F") 
    puts gr
  end

  if(sk == 'C' && sk_P == 'K')
    rezul = gr + 273.15
    puts "Температура в Кельвинах: #{rezul}"
  end
  
  if(sk == 'C' && sk_P == 'F')
    rezul = gr * 9 / 5 + 32
    puts "Температура в Фаренгейт: #{rezul}"     
  end          
    
  if(sk == "K" && sk_P == "C")             
    rezul = gr - 273.15
    puts "Температура в Цельсий: #{rezul}"
  end
  
  if(sk == "K" && sk_P == "F") 
    rezul = 9 * (gr - 273.15) / 5 + 32
    puts "Температура в Фаренгейт: #{rezul}"
  end
         
  if(sk == "F" && sk_P == "C") 
    rezul = 5 * (gr - 32) / 9
    puts "Температура в Цельсий: #{rezul}"
  end
           
  if(sk == "F" && sk_P == "K")
    rezul = 5 * (gr - 32) / 9 + 273.15
    puts "Температура в Кельвинах: #{rezul}"
  end
  
end

end

WorkWithDegrees.new.Gr
