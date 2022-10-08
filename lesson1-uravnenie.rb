puts "введите А"
a = gets.chomp.to_f
puts "введите B"
b = gets.chomp.to_f
puts "введите С"
c = gets.chomp.to_f
d = b**2 - 4 * a * c
puts "дискриминант равен #{d}"
 
def vilka (a, b, c, d)
	if d == 0
		"один корень : #{ (-b) / (2 * a)}"
	elsif d < 0
		"нет корней"
	else 
		x1 = ((-b + Math.sqrt(d)) / (2 *a))
		x2 = ((-b - Math.sqrt(d)) / (2 *a))
		"первый корень уравнения равен #{x1}, а второй корень уравнения равен #{x2}"
	end
end
puts [a,b,c].select(&:zero?).empty?  ? vilka(a, b, c, d) : "Не является квадратным уравнением"