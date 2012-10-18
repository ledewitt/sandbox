list = [ ]
checked = [ ]

puts "Enter an action (a = add, c = check off, q=quit): "

while input = gets.strip
  if input == "a"
    puts "Enter a list item: "
    list << gets.strip
  elsif input == "c"
    puts list
    puts "Type an item to checkoff: "
    checkoff = gets.strip
    checked << checkoff
    list.delete(checkoff)
  elsif input == "q"
    exit
  end
  
  if !(list.empty?)
    puts "Current to do list:"
    puts list
  else
    puts "Congrats nothing on to do list!"
  end
  
  if !(checked.empty?)
    puts "Items checked off list:"
    puts checked
  else
    puts "Nothing checked off!"
  end
  
  puts "Enter an action (a = add, c = check off, q=quit): "
  # p list
  # p input
end