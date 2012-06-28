picks = [1,2,3,4,5,6,7,8,9,10].shuffle[0..4]

puts "Your picks"
p picks

results = [1,2,3,4,5,6,7,8,9,10].shuffle

puts "The results"
p results

points = [15,10,5,3,1]

score = 0

compiled = picks.zip(results,points)

puts "The compiled nested array"
p compiled

picks.zip(results,points) do |pick, result, points|
  if pick == result
    puts "You picked #{pick} correctly you earn #{points} points"
    score += points
  else
    if results[0..4].include? pick
      puts "Consulation point #{pick} is in the range you earn 1 point."
      score += 1
    end
  end
end

# a = [1,2,3]
# b = %w(a b c)
# a.zip(b) do |l,r|
#   p l
#   p r
# end

# picks.each_with_index do |pick, i|
#   p pick
#   p results[i]
#   p pick == results[i]
#   if pick == results[i]
#     case i
#     when 0
#       score += 15
#     when 1
#       score += 10
#     when 2
#       score += 5
#     when 3
#       score += 3
#     when 4
#       score += 1
#     end
#   else
#     if results[0..4].include? pick
#       puts "Consulation point #{pick} is in the range."
#       score += 1
#     end
#   end
# end

puts "Your score is #{score}"