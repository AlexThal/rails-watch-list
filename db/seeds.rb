require 'faker'
Movie.destroy_all
puts 'Creating 100 fake movies...'
100.times do
  movie = Movie.new(
    title: Faker::Movie.title,
    overview: Faker::Movie.quote,
    poster_url: "https://source.unsplash.com/random/1000%C3%97500/?movie",
    rating: rand(1.0..10.0).round(1)
  )
  puts movie.save
end
