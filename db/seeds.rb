Movie.delete_all
User.delete_all
Actor.delete_all

password = "passwordpassword"

5.times do
  user = User.new
  user.email = Faker::Internet.email
  user.password = password
  user.first_name = Faker::Name.first_name
  user.last_name = Faker::Name.last_name
  user.username = Faker::Internet.user_name
  puts "Welcome " + user.first_name if user.save
end


# 10.times do
#   movie = Movie.new
#   movie.title = Faker::Book.title
#   movie.description = Faker::Lorem.sentence
#   movie.user_id = Faker::Number.between(1, 5)
#   movie.date = Faker::Date.between(30.years.ago, Date.today)
#   movie.category = Faker::Book.genre
#   movie.available = Faker::Boolean.boolean
#   puts "welcome " + movie.title if movie.save
    # actor = movie.actors.new
    # actor.first_name = Faker::Internet.user_name
    # actor.last_name = Faker::Internet.user_name
    # actor.image_id = "https://unsplash.it/200/300/?random"
    # actor.user_id = Faker::Number.between(1, 10)
    # puts "welcome " + actor.first_name if actor.save
# end







