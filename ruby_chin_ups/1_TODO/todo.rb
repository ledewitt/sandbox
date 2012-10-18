list = [ ]

puts "Enter an action (a = add, d = delete, q = quit): "

while input = gets.strip
  if input == "a"
    puts "Enter a list item: "
    list << gets.strip
  elsif input == "d"
    puts list
    puts "Choose an item to delete: "
    list.delete(gets.strip)
  elsif input == "q"
    exit
  end
  
  if !(list.empty?)
    puts "Current to do list:"
    puts list
  else
    puts "Congrats nothing on to do list!"
  end
  
  puts "Enter an action (a = add, d = delete, q = quit): "
  # p list
  # p input
end