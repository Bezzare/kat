# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Movie.create(link: "https://kat.cr/home-2015-720p-brrip-x264-yify-t10886820.html",
             name: "Home 2015",
             size: "755.27 MB",
             files: "3",
             age: "1 day",
             seed: "18478",
             leech: "7525",
             imdb: "6.7")

Movie.create(link: "https://kat.cr/jurassic-world-2015-hd-ts-xvid-ac3-hq-hive-cm8-t10793417.html",
             name: "Jurassic World 2015",
             size: "1.69 GB",
             files: "4",
             age: "3 weeks",
             seed: "16065",
             leech: "6065",
             imdb: "8.0")


Movie.create(link: "https://kat.cr/kingsman-the-secret-service-2014-1080p-brrip-x264-yify-t10671319.html",
             name: "Kingsman",
             size: "1.95 GB",
             files: "2",
             age: "1 month",
             seed: "12930",
             leech: "2614")

20.times do |n|
      name = Faker::Name.name
      size = Faker::Number.between(2, 10).to_s + " GB"
      files = Faker::Number.between(1, 5)
      age = Faker::Number.between(1, 5).to_s + " weeks"
      seed = Faker::Number.between(50, 20000)
      leech = Faker::Number.between(50, 20000)
      imdb = Faker::Number.decimal(1,1)

      Movie.create(name: name,
                   size: size,
                   files: files,
                   age: age,
                   seed: seed,
                   leech: leech,
                   imdb: imdb)
end