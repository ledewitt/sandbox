picks = [1,2,3,4,5,6,7,8,9,10].shuffle[0..4]

puts "Your picks"
p picks

results = [1,2,3,4,5,6,7,8,9,10].shuffle

puts "The results"
p results

score = 0

picks.each_with_index do |pick, i|
  p pick
  p results[i]
  p pick == results[i]
  if pick == results[i]
    case i
    when 0
      score += 15
    when 1
      score += 10
    when 2
      score += 5
    when 3
      score += 3
    when 4
      score += 1
    end
  else
    if results[0..4].include? pick
      puts "Consulation point #{pick} is in the range."
      score += 1
    end
  end
end

puts "Your score is #{score}"