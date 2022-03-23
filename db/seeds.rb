# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(username: "user1", password: "password", email: "admin@admin.com", bio: "This is my admin account, I am a god with all these admin powers")


forums = Forum.create([{name: "Anime"}, {name: "Manga"}, {name: "General"}])

forum_posts = ForumPost.create([{title: "Aot season 4 is crazy", content: "Titans everywhere!", forum_id: 1, user_id: 1}, {title: "Best anime to watch in summer 2022?", content: "Any genre please", forum_id: 1, user_id: 1}, {title: "Do you prefer manga to anime?", content: "The age old discussion. What's your preference", forum_id: 2, user_id: 1}, {title: "So many good mangas out right now!?", content: "I have no idea what manga to read next lol", forum_id: 2, user_id: 1}, {title: "How's everyones day today?", content: "Thinking about this rainy weather its so nice", forum_id: 3, user_id: 1}, {title: "Anyone traveling soon?", content: "Where shall I travel to this summer, perhaps somewhere in Asia", forum_id: 3, user_id: 1}])
