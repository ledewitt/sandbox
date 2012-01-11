languages = ['English', 'Norwegian', 'Ruby']

# lang is the variable that each will use to point to the
# objects in the array
# Vertical bars don't do anything to lang; they just let
# each know which variable to use to feed in the objects of the array


languages.each do |lang|
  puts 'I love ' + lang + '!'
  puts 'Don\'t you?'
end

puts 'And let\'s hear it for Java!'
puts '<crickets chirp in the distance>'

=begin
3.times do
  puts 'Hip-Hip-Hooray'
end
=end

2.times do
  puts '...you can say that again...'
end