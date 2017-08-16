# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)





# usuário: carolinameira, senha AbC123, email: meira.carolina@gmail.com



user = User.create!(first_name: 'carolina', last_name: 'meira', username: 'carolinameira', influencer: true , category:Faker::Job.title , user_photo: Faker::Avatar.image, email: 'meira.carolina@gmail.com' , password: 'AbC123' )

3.times do

  edition = Edition.create!(date: Faker::Date.backward(1), greeting: Faker::Friends.quote, farewell: Faker::HarryPotter.quote, greeting_img: "http://res.cloudinary.com/chanquete23/image/upload/v1502208390/dzc0ngspkdw0ohfawjyg.jpg", farewell_img: Faker::LoremPixel.image, user: user)

  2.times do
    post = Post.create!(headline: Faker::FamilyGuy.quote, option_more: 'more' ,option_next: 'next', post_img: "http://res.cloudinary.com/chanquete23/image/upload/v1502208390/dzc0ngspkdw0ohfawjyg.jpg" , edition: edition)
    4.times do
      Balloon.create!(content: Faker::Lorem.words(40) , link: Faker::Internet.url, balloon_img: "http://res.cloudinary.com/chanquete23/image/upload/v1502208390/dzc0ngspkdw0ohfawjyg.jpg", post: post)
    end
  end
end



# usuário: luanaperin, senha AbC123, email: luanakperin@gmail.com


user_1 = User.create!(first_name: 'luana', last_name: 'perin', username: 'luanaperin', influencer: true , category:Faker::Job.title , user_photo: Faker::Avatar.image, email: 'luanakperin@gmail.com' , password: 'AbC123' )

2.times do

  edition = Edition.create!(date: Faker::Date.backward(3), greeting: Faker::Friends.quote, farewell: Faker::HarryPotter.quote, greeting_img: "http://res.cloudinary.com/chanquete23/image/upload/v1502208390/dzc0ngspkdw0ohfawjyg.jpg", farewell_img: Faker::LoremPixel.image, user: user_1)

  3.times do
    post = Post.create!(headline: Faker::FamilyGuy.quote, option_more: 'more' ,option_next: 'next', post_img: "http://res.cloudinary.com/chanquete23/image/upload/v1502208390/dzc0ngspkdw0ohfawjyg.jpg", edition: edition)
    4.times do
      Balloon.create!(content: Faker::Lorem.words(40) , link: Faker::Internet.url, balloon_img: "http://res.cloudinary.com/chanquete23/image/upload/v1502208390/dzc0ngspkdw0ohfawjyg.jpg", post: post)
    end
  end
end

# usuário: thiagosawada, senha AbC123, email: tms.sawada@gmail.com


user_2 = User.create!(first_name: 'thiago', last_name: 'sawada', username: 'thiagosawada', influencer: true , category:Faker::Job.title , user_photo: Faker::Avatar.image, email: 'tms.sawada@gmail.com' , password: 'AbC123' )

2.times do

  edition = Edition.create!(date: Faker::Date.backward(5), greeting: Faker::Friends.quote, farewell: Faker::HarryPotter.quote, greeting_img: "http://res.cloudinary.com/chanquete23/image/upload/v1502208390/dzc0ngspkdw0ohfawjyg.jpg", farewell_img: Faker::LoremPixel.image, user: user_2)

  3.times do
    post = Post.create!(headline: Faker::FamilyGuy.quote, option_more: 'more' ,option_next: 'next', post_img: "http://res.cloudinary.com/chanquete23/image/upload/v1502208390/dzc0ngspkdw0ohfawjyg.jpg" , edition: edition)
    3.times do
      Balloon.create!(content: Faker::Lorem.words(40) , link: Faker::Internet.url, balloon_img: "http://res.cloudinary.com/chanquete23/image/upload/v1502208390/dzc0ngspkdw0ohfawjyg.jpg", post: post)
    end
  end
end
