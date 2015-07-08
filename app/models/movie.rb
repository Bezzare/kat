class Movie < ActiveRecord::Base

    # link:string
    # name:string
    # size:string
    # files:integer
    # age:string
    # seed:integer
    # leech:integer
    # imdb:real

    before_save :convert_age
    validates :name, presence: true
    validates :link, presence: true

    def self.search(search)
      if search
        where('name LIKE ?', "%#{search}%")
      else
        all
      end
    end

    private
        def convert_age
        end
end








