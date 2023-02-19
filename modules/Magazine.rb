class Magazine
  attr_accessor :name, :category

  @@all = []
  
  def initialize(name, category)
      @name = name
      @category = category
      @@all << self
  end

  def self.all
      @@all
  end

#    Magazine#contributors
# Returns an array of Author instances who have written for this magazine

 def contributors
      self.articles.map {|article| article.author}.uniq
  end

  def self.find_by_name(name)
      self.all.find {|magazine| magazine.name == name}
  end

  def articles
      Article.all.select {|article| article.magazine == self}
  end


end