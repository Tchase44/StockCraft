# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Post.destroy_all
Comment.destroy_all
Stock.destroy_all

post1 = Post.create(ticker: "AMZN" , body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vitae euismod dui. Donec porta scelerisque interdum. Donec pulvinar gravida enim. Aliquam at vestibulum risus. Nullam placerat sem nec odio tristique maximus. Sed ut eleifend neque. In sit amet ultrices lacus.")
post2 = Post.create(ticker: "F" , body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.Donec pulvinar gravida enim. Aliquam at vestibulum risus. Nullam placerat sem nec odio tristique maximus. Sed ut eleifend neque. In sit amet ultrices lacus.")
post3 = Post.create(ticker: "NVDA" , body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vitae euismod dui. Donec porta scelerisque interdum. Donec pulvinar gravida enim. Aliquam at vestibulum risus. Nullam placerat sem nec odio tristique maximus. Sed ut eleifend neque. In sit amet ultrices lacus.")
post4 = Post.create(ticker: "ATVI" , body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam at vestibulum risus. Nullam placerat sem nec odio tristique maximus. Sed ut eleifend neque. In sit amet ultrices lacus.")
post5 = Post.create(ticker: "AOBC", body: "word word wordaf.jasflkjsfblword word word word")

comm1 = post1.comments.create(content: "But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and give ")
comm2 = post1.comments.create(content: "But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences")
comm3 = post1.comments.create(content: "No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not k to p")
comm12 = post2.comments.create(content: "But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and give")
comm22 = post2.comments.create(content: "No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not w to ")
comm32 = post2.comments.create(content: "But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences")
comm13 = post3.comments.create(content: "But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I wil")
comm23 = post3.comments.create(content: "But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences")
comm33 = post3.comments.create(content: "But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences")
comm14 = post4.comments.create(content: "No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not w to ")
comm24 = post4.comments.create(content: "But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and give")
comm34 = post4.comments.create(content: "No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not w to ")



stock1 = Stock.create(ticker:"F",    price: 11.33)
stock2 = Stock.create(ticker:"NVDA", price: 140.54)
stock3 = Stock.create(ticker:"ATVI", price: 53.12)
stock4 = Stock.create(ticker:"AMZN", price: 965.23)
stock5 = Stock.create(ticker:"AOBC", price: 23.44)
stock6 = Stock.create(ticker: "STAG",price: 24.21)
stock8 = Stock.create(ticker: "MGM", price: 32.50)
stock9 = Stock.create(ticker: "CPT", price: 86.66)
stock0 = Stock.create(ticker: "AMD", price: 11.22)










