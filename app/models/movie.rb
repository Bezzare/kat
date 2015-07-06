class Movie < ActiveRecord::Base
    # link:string
    # name:string
    # size:string
    # files:integer
    # age:string
    # seed:integer
    # leech:integer
    # imdb:real

    def self.search(search)
      if search
        where('name LIKE ?', "%#{search}%")
      else
        all
      end
    end
end
