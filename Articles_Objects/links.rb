class Links

  def initialize
    @link_list = Hash.new
    
    f = File.open("env_vars/links.txt", "r")
    
    f.each_line do |l|
      field = l.split(',')
      
      @link_list[field[0].strip]=field[1].strip
    end

  end

  def each(&block)
    @link_list.each(&block)
  end

end