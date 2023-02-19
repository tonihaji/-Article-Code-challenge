# Import the necessary classes

require_relative '../modules/Article.rb'
require_relative '../modules/Magazine.rb'
require_relative '../modules/Author.rb'
# Create an Author instance
#  require pry
require 'pry'
require 'bundler/setup'
require 'base64'

Bundler.require

require_relative '../modules/Article'
require_relative '../modules/Author'
require_relative '../modules/Magazine'


# # use the following code to test your solution
magazine = Magazine.new("The New Yorker", "News")
puts magazine.name
puts magazine.category
puts magazine.articles
puts magazine.contributors
author = Author.new("John Doe")
article = Article.new(author, magazine, "The Best Article Ever")
puts magazine.articles
puts article.author.name
puts article.magazine.name
puts article.title

# # => [#<Article:0x00007f9b0a0b0a98>]
puts magazine.contributors




