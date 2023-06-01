require_relative 'article.rb'
class Magazine 
    #macro allows the name and category to change after initialization
    attr_accessor :name, :category

    @@all = []
    def initialize(name:, category:)
        @name = name
        @category = category
        @@all << self
    end

    def self.all 
        @@all
    end

    #return an array of author instances who have written the magazine
    def contributors
        Article.all.select { |article| article.magazine == self }
          .map { |article| article.author }.uniq
    end
    
    def self.find_by_name(name)
        @@all.find { |magazine| magazine.name == name }
    end

    def article_titles
        Article.all.select { |article| article.magazine == self }
            .map { |article| article.title }
    end

    def contributing_authors
        contributors.select { |author| author.articles.count > 2 }
    end
end



