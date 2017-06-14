class Stock < ApplicationRecord
	validates :ticker, presence: true
	
	has_many :watchlists
	has_many :users, through: :watchlists
	
end