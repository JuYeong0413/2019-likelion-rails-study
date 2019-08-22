class Post < ApplicationRecord
    def hello
        puts("제목 : #{title} 이고 내용은 #{content}에요")
        # puts("제목 : #{self.title} 이고 내용은 #{self.content}에요")
    end
    
    def self.print_all
        self.all.each do |post|
            puts post.title
        end
    end
end
