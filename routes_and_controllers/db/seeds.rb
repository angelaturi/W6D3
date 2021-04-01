# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Artwork.destroy_all
ArtworkShare.destroy_all 


user1 = User.create!(username: 'sebastian')
user2 = User.create!(username: 'angela')
user3 = User.create!(username: 'ara')
user4 = User.create!(username: 'megan')

artwork1 = Artwork.create!(title: 'Mona Lisa', image_url: 'www.monalisa.com', artist_id: user1.id)
artwork2 = Artwork.create!(title: 'Starry Night', image_url: 'www.starrynight.com', artist_id: user2.id)

artwork_share1 = ArtworkShare.create!(artwork_id: artwork1.id, viewer_id: user3.id)
artwork_share2 = ArtworkShare.create!(artwork_id: artwork2.id, viewer_id: user4.id)

comment1 = Comment.create!(body: 'I LOVE THIS ARTWORK!', user_id: user1.id, artwork_id: artwork1.id)
