constitution = File.open("text_us_constitution.txt")

word_count = Hash.new(0)

constitution.read.scan(/\w+/) { |word| word_count[word.downcase] += 1}

sorted = word_count.sort_by { |key, value| value}

# p sorted.class

10.times do 
  p sorted.pop
end