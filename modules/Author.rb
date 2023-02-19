
# Author
class Author
 
  attr_reader :name

  def initialize(name)
      @name = name
  end

  def articles
      Article.all.select {|article| article.author == self}
  end

  def magazines
      self.articles.map {|article| article.magazine}.uniq
  end

#     Author#add_article(magazine, title)
# Given a magazine instance and a title, creates a new article and associates it with that author and magazine

  def add_article(magazine, title)
      Article.new(self, magazine, title)
  end

  # Author#topic_areas
# Returns a unique array of strings with the categories of the magazines the author has contributed to

  def topic_areas
      self.magazines.map {|magazine| magazine.category}.uniq
  end
end