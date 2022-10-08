puts "введите длину первой стороны треугольника"
a = gets.chomp.to_f
puts "введите длину второй стороны треугольника"
b = gets.chomp.to_f
puts "введите длину третьей стороны треугольника"
c = gets.chomp.to_f
 sides = [a, b, c]
 def chek_valid (sides)
 	true if sides.select {|side| side <= 0 }.empty?
 end
def chek_valid2 (sides)
	sides.sort!
	true if sides[2] < sides[1] + sides[0]
end

 def check_right(sides)
  sides.sort!
  true if sides[2]**2 == sides[1]**2 + sides[0]**2
end
if !chek_valid (sides)
	puts "такого треугольника не существует"
	end
if !chek_valid2 (sides) 
	puts "такого треугольника не существует"
	end
if sides.uniq.length == 1
	puts "ваш треугольник равносторонний"
elsif sides.uniq.length ==2
	puts "ваш треугольник равнобедренный"
elsif check_right(sides)
	puts "ваш треугольник прямоугольный"
else 
	puts "треугольник не является прямоугольным, равносторонним или равнобедренным"
end
