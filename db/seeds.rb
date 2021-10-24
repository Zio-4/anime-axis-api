# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(username: "user1", password: "password", email: "admin@admin.com", bio: "This is my admin account, I am a god with all these admin powers muahahah")


forums = Forum.create([{name: "Anime"}, {name: "Manga"}, {name: "General"}])

forum_posts = ForumPost.create([{title: "Anime Post #1", content: "waa waaa waaa", forum_id: 1, user_id: 1}, {title: "Anime Post #2", content: "wha whaaa whhhaaa", forum_id: 1, user_id: 1}, {title: "Manga Post #1", content: "oshi kenera winzu", forum_id: 2, user_id: 1}, {title: "Manga Post #2", content: "I have no idea what manga to read next lololol", forum_id: 2, user_id: 1}, {title: "General Post #1", content: "thinking about this rainy weather its so nice", forum_id: 3, user_id: 1}, {title: "General Post #2", content: "Where shall I travel to this summer, perhaps somewhere in Asia", forum_id: 3, user_id: 1}])
