# Individual articles loaded this is called by the article list as each
# is read and creates an individual arricle object to be returned by the
# calling function with in article list and populates the article list
# object.

class Article

  def initialize ( title )
    @title = title
    @body  = File.read("./articles/#{title}")
  end
  
  attr_reader :title, :body
  
end