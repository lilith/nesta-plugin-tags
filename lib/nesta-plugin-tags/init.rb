module Nesta
  module Plugin
    module Tags
      module Helpers
        # If your plugin needs any helper methods, add them here...
      end
    end
  end

  class App
    helpers Nesta::Plugin::Tags::Helpers
  end
  
  class Page    
    def articles_by_tags
       Page.find_articles.select { |article| not (article.tags & self.tags).empty? }
     end
     def self.articles_by_tag(tag)
        Page.find_articles.select { |article| not (article.tags & [tag]).empty? }
      end

     def tags
       strings = metadata('tags')
       strings.nil? ? [] : strings.split(',').map { |string| string.strip }
     end
  end
end
