# StockCraft

## Technologies Used
 This web application uses Ruby on Rails to do everything. No JS
1. Ruby version
	- ruby 2.4.0
	- Rails 5.1.1
2. Addintional Gems
	- devise

## Features
 Forum/Twitter style application with posts and comments. New posts appear at the top of the index page and new comments appear at the top of the list.

 Stock watchlist feature allows a user to save stocks to a watchlist to keep track of their favorites or their current investments.

## Install
nothing to special here
 - clone the repo down
 - create , migrate, and seed the data base
 - rials s and open the localhost:3000
 - Log In and have fun

## Unsolved Problems

There is a bug with in the Posts controller when updating/editing. If the stock ticker is updated to a non-exsisting ticker it will throw "no method for nil class".
- didnt get time to solve this one

Capitolization Error in Add To Watchlist. Should upcase input but does not
- probably a simple fix 

## Features I wanted to add
### Investment groups
Being able to create or join a group of users.
The group would have a private page only visable to members.
This page would have feed for posts.
-maybe a voting feature where a member could post a suggestion(Buy/Sell) for a stock and the members could vote on the idea(Yay/Nay)
Group would also have a watchlist add/or a portfoilo with stocks the group decided to add.

## Future Features
Real Time Stock Prices!!!!
Stock Charts
Advaced Stock Charts

