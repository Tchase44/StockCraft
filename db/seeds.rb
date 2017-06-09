# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Post.destroy_all
Comment.destroy_all


post1 = Post.create(ticker: "GOOG" , body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vitae euismod dui. Donec porta scelerisque interdum. Donec pulvinar gravida enim. Aliquam at vestibulum risus. Nullam placerat sem nec odio tristique maximus. Sed ut eleifend neque. In sit amet ultrices lacus.")
post2 = Post.create(ticker: "AAPL" , body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vitae euismod dui. Donec porta scelerisque interdum. Donec pulvinar gravida enim. Aliquam at vestibulum risus. Nullam placerat sem nec odio tristique maximus. Sed ut eleifend neque. In sit amet ultrices lacus.")
post3 = Post.create(ticker: "NVDA" , body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vitae euismod dui. Donec porta scelerisque interdum. Donec pulvinar gravida enim. Aliquam at vestibulum risus. Nullam placerat sem nec odio tristique maximus. Sed ut eleifend neque. In sit amet ultrices lacus.")
post4 = Post.create(ticker: "ATVI" , body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vitae euismod dui. Donec porta scelerisque interdum. Donec pulvinar gravida enim. Aliquam at vestibulum risus. Nullam placerat sem nec odio tristique maximus. Sed ut eleifend neque. In sit amet ultrices lacus.")


comm1 = post1.comments.create(content: "But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. ")
comm2 = post1.comments.create(content: "But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences")
comm3 = post1.comments.create(content: "No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself,")
comm12 = post2.comments.create(content: "But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. ")
comm22 = post2.comments.create(content: "No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself,")
comm32 = post2.comments.create(content: "But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences")
comm13 = post3.comments.create(content: "But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. ")
comm23 = post3.comments.create(content: "But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences")
comm33 = post3.comments.create(content: "But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences")
comm14 = post4.comments.create(content: "No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself,")
comm24 = post4.comments.create(content: "But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. ")
comm34 = post4.comments.create(content: "No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself,")