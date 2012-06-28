def all_args(req, opt=nil, *rest)
  p "req: #{req}"
  p "opt: #{opt}"
  p "rest: #{rest}"
end

# all_args(1)
# 
# all_args(1,2)
# 
# all_args(1,2,3)

all_args(1,2,3,4,5)

def two_or_five(*args)
  unless args.size == 2 or args.size == 5
    raise ArgumentError "This method requires two or five arguments."
  end
  # rescue ArgumentError
  #   puts "The method needs 2 or 5 arguments"
  # end  
end

p two_or_five(1,2)

# p two_or_five(1,2,3)

p two_or_five(1,2,3,4,5)

# p two_or_five(1,2,3,4,5,6)

def needs_some_args(a,b,c=nill)
  [a,b,c]
end

p args = [1,2]
