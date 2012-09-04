require_relative "article"

class ArticleList

  def initialize
    @article_list = Array.new

    Dir.foreach ("./articles/") do |file|
      if file.include?(".txt")
        article = Article.new( "#{File.basename(file, ".txt")}",
                               File.read("./articles/#{file}") )
      
        @article_list << article
      end
 
    end      
  end

  def each(&block)
    @article_list.each(&block)
  end

end