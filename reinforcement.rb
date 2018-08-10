# Copied David, was able to put the info into an array. And knew to use an each do loop. 
array = [
  [nil, "Pumpkin", nil, nil],
  ["Socks", nil, "Mimi", nil],
  ["Gismo", "Shadow", nil, nil],
  ["Smokey","Toast","Pacha","Mau"]
]

def seat(seat_map)
  seat_map.each_with_index do |item, index|
    item.each_with_index do |i, ind|
      if i == nil
        puts "Row #{index+1} seat #{ind+1} is free, do you want to sit there? (y/n)"
        answer = gets.chomp.downcase
        if answer == 'y'
          puts "What is the name for this seat?"
          name = gets.chomp.downcase
          seat_map[index][ind] = name.capitalize
        end
      end
    end
  end
end

seat(map)

p map
