alfavit = ('а'..'я').to_a
glasnie = %w[у е ё ы а о э я и ю]
result_hash = {}
alfavit.each_with_index do |letter, letter_num|
  result_hash[letter] = letter_num + 1 if glasnie.include? letter
end
puts result_hash