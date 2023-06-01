#set up the file to be a tun file
require 'pry'

#load the models/classes
require_relative './author.rb'
require_relative './article.rb'
require_relative './magazine.rb'

#author instances
author_one = Author.new(name: "James")
author_two = Author.new(name: "Anna")

#magazine instances 
magazine_one = Magazine.new(name: "Tech Magazine", category: "Tech")
magazine_two = Magazine.new(name: "Sports Digest", category: 'Sports')

#create article instances
article_one = Article.new(author: author_one, magazine: magazine_one, title: "Into to ruby")
article_two = Article.new(author: author_two, magazine: magazine_one, title: "Data structures")
article_tree = Article.new(author: author_one, magazine: magazine_two, title: "Sports best played")
article_four = Article.new(author: author_two, magazine: magazine_two, title: "Sports today")

#check all article instances
Article.all
#check all the magazine instances
Magazine.all

#Object Relationship Methods

#1.return an array of article instances the author has written
author_one.articles
#2. return a uniq array of magazine instances for which the author has contributed to
author_one.magazines
#3. return an array of author instances who have written the magazine
magazine_one.contributors




# binding.pry