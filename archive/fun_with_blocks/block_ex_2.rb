def print_the_value_returned_by_the_block
  if block_given?
    value = yield
    puts "The block returned #{value}"
  else
    puts "No block given"
  end
end

print_the_value_returned_by_the_block {3.14195 / 4.0 }

print_the_value_returned_by_the_block

print_the_value_returned_by_the_block {42}