json.array!(@movies) do |movie|
  json.extract! movie, :id, :category, :link, :name, :size, :files, :age, :seed, :leech, :imdb
  json.url movie_url(movie, format: :json)
end
