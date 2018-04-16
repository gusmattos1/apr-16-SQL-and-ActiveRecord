
classe  = [
  [nil, "Pumpkin", nil, nil],
  ["Socks", nil, "Mimi", nil],
  ["Gismo", "Shadow", nil, nil],
  ["Smokey","Toast","Pacha","Mau"]
]
new_classe = []
classe.each do |array|
  hash = {}
  array.each_with_index do |item, index|
    hash[index+1] = item
  end
  new_classe << hash
end
i = 1

new_classe.each do |hash|
  hash.each do |key, value|
    if value == nil
      puts " Row #{i} seat #{key} is free. Do you want to sit there? (y/n)"
      answer = gets.chomp
        if answer.downcase == "y"
          puts "What is your name?"
          name = gets.chomp
          hash[key] = name
        end
    end
  end
  i += 1
end
puts new_classe
