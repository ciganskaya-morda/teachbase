array = []
num = 10
while num <= 100
  array.push num if num % 5 == 0
  num += 1
end
puts array