
classe  = [
  [nil, "Pumpkin", nil, nil],
  ["Socks", nil, "Mimi", nil],
  ["Gismo", "Shadow", nil, nil],
  ["Smokey","Toast","Pacha","Mau"]
]
# new_classe = []
# classe.each do |array|
#   hash = {}
#   array.each_with_index do |item, index|
#     hash[index+1] = item
#   end
#   new_classe << hash
# end
# i = 1

classe.each do |array|
  array.each_with_index do |seat, index|
    if seat == nil
      puts " Row #{classe.index(array) + 1} seat #{index + 1} is free. Do you want to sit there? (y/n)"
      answer = gets.chomp
      if answer.downcase == "y"
        puts "What is your name?"
        name = gets.chomp
        classe[classe.index(array)][index] = name
      end
    end
  end
end
print classe
