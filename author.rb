require_relative "article.rb"
class Author 
    attr_reader :name
    #name cannot change after initialization 
    def initialize(name:)
        @name = name 
    end
    #return an array of article instances 
    def articles
        Article.all.select { |article| article.author == self }
    end

    #return a uniq array of magazine instances for which the author has contributed to
    def magazines
        articles.map { |article| article.magazine }.uniq
    end

    #associate a new article instance with the author 
    def add_article(magazine, title)
        Article.new(self, magazine, title)
    end

    def topic_areas
        magazines.map{ |magazine| magazine.category }.uniq
    end
end


