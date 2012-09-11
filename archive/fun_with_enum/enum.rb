
# deck = Array.new(52) do |card|
#   suit = ["S", "H", "D", "C"].each do |s|
#     if card == 14
#       card = 1
#     end
#     card += 1
#     # puts "#{card} #{suit}"
#   end
# end
# 
# p deck

# suit = ["S", "H", "D", "C"]
# 
# suit.each do |s|
#   puts s
# end

deck = Array.new(52) do |card|
  card += 1
  puts card
end