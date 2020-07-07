# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(nickname: 'LOLYOU', avatar_url: 'test.com')
User.create(nickname: 'SampleThing', avatar_url: 'test.com')
User.create(nickname: 'Omg', avatar_url: 'test.com')
User.create(nickname: 'Lisa', avatar_url: 'test.com')
User.create(nickname: 'Arena', avatar_url: 'test.com')
User.create(nickname: 'MusicLover', avatar_url: 'test.com')

Waifu.create(name: 'Matoi', anime: 'Kill la Kill', image_url: 'test.com', rating: 85)
Waifu.create(name: 'Shinobu', anime: 'Bakemonogatari', image_url: 'test.com', rating: 89)
Waifu.create(name: 'Kurisu', anime: 'Steins Gate', image_url: 'test.com', rating: 77)

Rating.create(user_id: 2, waifu_id: 1, rating: 50)
Rating.create(user_id: 5, waifu_id: 3, rating: 92)