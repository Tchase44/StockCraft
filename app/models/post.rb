class Post < ApplicationRecord
	validates :ticker, :body, presence: true
	# validates presence: :true
	belongs_to :user, optional: true
	has_many :comments, dependent: :destroy
end
