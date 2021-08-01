# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create(email: 'user1@nikola.com', password: 'password', role: 'user');

editor1 = User.create(email: 'editor1@nikola.com', password: 'password', role: 'editor');
editor2 = User.create(email: 'editor2@nikola.com', password: 'password', role: 'editor');
editor3 = User.create(email: 'editor3@nikola.com', password: 'password', role: 'editor');
admin = User.create(email: 'admin@nikola.com', password: 'password', role: 'admin');

sports = Category.create(title: 'sports')
technology = Category.create(title: 'technology')
music = Category.create(title: 'music')

Article.create(
	[
		{ title: 'Article 1', content: 'Labore laborum in proident tempor commodo. Adipisicing ea aliquip nulla eu id irure. Duis eu aute dolor in veniam ad culpa ad dolore commodo mollit nulla eu dolore.', category_id: sports.id, user_id: editor1.id },
		{ title: 'Article 2', content: 'Eiusmod incididunt ullamco anim veniam ea veniam veniam id ea ex consectetur. Eu id nisi anim ut reprehenderit elit elit voluptate et occaecat dolor. Sint elit in ea voluptate sint ex est deserunt. Est consectetur irure ut aliqua ad ullamco nulla. Esse do anim sunt sit consequat non.', category_id: technology.id, user_id: editor2.id },
		{ title: 'Article 3', content: 'Tempor incididunt anim non exercitation labore cupidatat dolor incididunt. Deserunt aliqua laboris culpa commodo duis ea officia quis fugiat eiusmod nulla. Lorem Lorem aliqua dolore dolore proident irure mollit proident minim pariatur culpa nostrud non. Ullamco tempor anim non anim ipsum excepteur ex occaecat consequat culpa nisi ullamco. Incididunt deserunt officia sunt id sit incididunt sunt pariatur quis ipsum.', category_id: music.id, user_id: editor3.id },
		{ title: 'Article 4', content: 'Sunt aliqua mollit dolor minim excepteur dolore ut do officia. Excepteur id commodo quis consectetur elit labore do ipsum quis tempor deserunt. Nulla commodo exercitation nisi pariatur ea cupidatat adipisicing voluptate laboris occaecat qui eu.', category_id: sports.id, user_id: editor1.id },
		{ title: 'Article 5', content: 'Velit minim ipsum cillum veniam eiusmod culpa sit aliqua do sint anim ipsum quis. Exercitation laboris proident duis occaecat magna irure non nulla nulla Lorem tempor ex anim. Lorem non proident duis tempor pariatur Lorem esse anim officia. Incididunt cillum fugiat ad adipisicing voluptate qui elit nulla pariatur. Labore eu et nisi deserunt ipsum proident qui exercitation voluptate Lorem eu. Tempor tempor qui tempor mollit ad ipsum.', category_id: technology.id, user_id: editor2.id },
		{ title: 'Article 6', content: 'Esse reprehenderit ut adipisicing minim reprehenderit adipisicing ex cillum proident laborum ut labore amet non. Nostrud sunt tempor amet culpa nulla sint officia et cillum nulla adipisicing sit. Proident velit irure et duis aliqua ipsum in sit nisi laboris dolor qui. Ullamco pariatur labore non sint aliqua laborum labore.', category_id: music.id, user_id: editor3.id },
		{ title: 'Article 7', content: 'Excepteur ea consectetur ipsum dolor eiusmod tempor incididunt. Sit laborum sit laborum quis et. Laborum esse dolore dolor labore.', category_id: sports.id, user_id: editor1.id },
		{ title: 'Article 8', content: 'Eiusmod laboris ex nisi laborum eiusmod veniam cillum mollit velit dolor. Esse ipsum laboris do amet mollit occaecat commodo. Commodo anim pariatur dolore duis proident. In ut laborum sint proident eu tempor eu officia cupidatat veniam ea incididunt tempor ad. Cupidatat enim sunt elit voluptate reprehenderit fugiat. Elit elit proident fugiat proident Lorem id minim anim pariatur.', category_id: technology.id, user_id: editor2.id },
		{ title: 'Article 9', content: 'Quis occaecat exercitation occaecat aliqua sint ex dolore do. Minim consectetur irure ea commodo consequat. Quis dolore cupidatat aute et in. Incididunt officia reprehenderit ut duis elit do magna reprehenderit qui incididunt sit consequat. Eiusmod culpa duis laborum Lorem pariatur commodo fugiat nulla aute amet do qui anim ex.', category_id: music.id, user_id: editor3.id },
		{ title: 'Article 10', content: 'Eiusmod amet adipisicing dolore ad ullamco qui qui aliqua enim nostrud. Nulla in eu occaecat aliquip labore amet esse. Ad esse magna tempor nostrud exercitation sit dolor elit. Cupidatat est qui fugiat veniam sunt occaecat sint sunt labore eu.', category_id: sports.id, user_id: editor1.id }
	]
)



