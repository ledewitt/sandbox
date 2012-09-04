class ArticleList

  def initialize
    @articles = Array.new

    Dir.foreach ("./articles/") do |file|
      if file.include?(".txt")
        article = Array.new
        article << "#{file}"
        article << File.read("./articles/#{file}")
        @articles << article
      end
    end      
  end

  def each(&block)
    @articles.each(&block)
  end

end
