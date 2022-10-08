puts "привет, как тебя зовут?"
name = gets.chomp

puts "#{name}, какой у тебя рост?"
height = gets.chomp.to_i

if height <= 110
	puts "поздравляю, твой вес уже оптимальный"
else 
	puts "#{name}, твой идеальный вес - #{(height - 110) * 1.15}"
end