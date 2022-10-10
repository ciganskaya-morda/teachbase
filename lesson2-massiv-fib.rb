array = [0,1]
array.each do 
  sled = array[-1] + array[-2]
  array.push sled if sled < 100 
end
puts array