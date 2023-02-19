class Article
  attr_reader :author, :magazine, :title
  @@all = []
  def initialize(author, magazine, title)
      @author = author
      @magazine = magazine
      @title = title
      @@all << self
  end

  def self.all
      @@all
  end
 
  def author
      @author
  end

  def magazine
      @magazine
  end

end

article = Article.new("Salim Mburia", "The Nairobians", "The Political Article Ever")
puts article.author
puts article.magazine
puts article.title