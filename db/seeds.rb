# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user - User.create(email: 'user1@nikola.com', role: 'user');

editor1 = User.create(email: 'editor1@nikola.com', role: 'editor');
editor2 = User.create(email: 'editor2@nikola.com', role: 'editor');
editor3 = User.create(email: 'editor3@nikola.com', role: 'editor');
admin = User.create(email: 'admin@nikola.com', role: 'admin');

sports = Category.create(title: 'sports')
technology = Category.create(title: 'technology')
music = Category.create(title: 'music')

Article.create(
	[
		{ title: '', content: '', category: sports.id, user_id: editor1.id },
		{ title: '', content: '', category: technology.id, user_id: editor2.id },
		{ title: '', content: '', category: music.id, user_id: editor3.id },
		{ title: '', content: '', category: sports.id, user_id: editor1.id },
		{ title: '', content: '', category: technology.id, user_id: editor2.id },
		{ title: '', content: '', category: music.id, user_id: editor3.id },
		{ title: '', content: '', category: sports.id, user_id: editor1.id },
		{ title: '', content: '', category: technology.id, user_id: editor2.id },
		{ title: '', content: '', category: music.id, user_id: editor3.id },
		{ title: '', content: '', category: sports.id, user_id: editor1.id }
	]
)



