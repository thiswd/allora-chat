# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)





# usuário: carolinameira, senha 123456, email: meira.carolina@gmail.com

user = User.create!(first_name: 'carolina', last_name: 'meira', username: 'carolinameira', influencer: true , category:Faker::Job.title , user_photo: Faker::Avatar.image, email: 'meira.carolina@gmail.com' , password: '123456' )

edition = Edition.create!(date: Faker::Date.backward(14), greeting: Faker::Friends.quote, farewell: Faker::HarryPotter.quote, greeting_img: Faker::LoremPixel.image, farewell_img: Faker::LoremPixel.image, user_id: user.id)

post = Post.create!(headline: Faker::FamilyGuy.quote, option_more: 'more' ,option_next: 'next', post_img: Faker::LoremPixel.image , edition_id: edition.id)

balloon = Balloon.create!(content: Faker::Lorem.characters(200) , link: Faker::Internet.url, balloon_img: Faker::LoremPixel.image, post_id: post.id)


# usuário: luanaperin, senha 123456, email: luanakperin@gmail.com


user_1 = User.create!(first_name: 'luana', last_name: 'perin', username: 'luanaperin', influencer: true , category:Faker::Job.title , user_photo: Faker::Avatar.image, email: 'luanakperin@gmail.com' , password: '123456' )

edition_1 = Edition.create!(date: Faker::Date.backward(14), greeting: Faker::Friends.quote, farewell: Faker::HarryPotter.quote, greeting_img: Faker::LoremPixel.image, farewell_img: Faker::LoremPixel.image, user_id: user_1.id)

post_1 = Post.create!(headline: Faker::FamilyGuy.quote, option_more: 'more' ,option_next: 'next', post_img: Faker::LoremPixel.image , edition_id: edition_1.id)

balloon_1 = Balloon.create!(content: Faker::Lorem.characters(200) , link: Faker::Internet.url, balloon_img: Faker::LoremPixel.image, post_id: post_1.id)


# usuário: thiagosawada, senha 123456, email: tms.sawada@gmail.com



user_2 = User.create!(first_name: 'thiago', last_name: 'sawada', username: 'thiagosawada', influencer: true , category:Faker::Job.title , user_photo: Faker::Avatar.image, email: 'tms.sawada@gmail.com' , password: '123456' )

edition_2 = Edition.create!(date: Faker::Date.backward(14), greeting: Faker::Friends.quote, farewell: Faker::HarryPotter.quote, greeting_img: Faker::LoremPixel.image, farewell_img: Faker::LoremPixel.image, user_id: user_2.id)

post_2 = Post.create!(headline: Faker::FamilyGuy.quote, option_more: 'more' ,option_next: 'next', post_img: Faker::LoremPixel.image , edition_id: edition_2.id)

balloon_2 = Balloon.create!(content: Faker::Lorem.characters(200) , link: Faker::Internet.url, balloon_img: Faker::LoremPixel.image, post_id: post_2.id)

