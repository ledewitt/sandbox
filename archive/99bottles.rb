bottles = 99

while bottles > 0
  puts bottles.to_s + ' bottles of beer on the wall'
  puts 'Take one down pass it around'
  bottles -= 1
  if bottles == 0
    puts 'No more bottles on the wall we are all drunk now go home!'
    break
  end
  if bottles == 1
    puts bottles.to_s + ' bottle of beer on the wall'
  else
    puts bottles.to_s + ' bottles of beer on the wall'
  end
end