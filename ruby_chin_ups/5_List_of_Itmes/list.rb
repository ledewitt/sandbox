items_file = File.open("items.txt")

items_hash = Hash.new

items_file.each_line do |line|
  fields = line.split(',')
  
  item = fields[0].strip
  cost = fields[1].strip
  
  items_hash.merge!(item.to_sym => cost.to_f)
end

total_cost = 0.0

(1 + rand(10)).times do
  bought_item = items_hash.keys.sample
  number_purchased = 1 + rand(3)
  cost = number_purchased * items_hash[bought_item]
  total_cost += cost
  puts "%-12s %1d %1s %5.2f %1s %6.2f" % [bought_item, 
                            number_purchased,
                            "x",
                            items_hash[bought_item],
                            "=",
                            cost ]
end

puts "%-22s %1s %6.2f" % ["Total Cost", "=", total_cost]