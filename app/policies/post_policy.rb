class PostPolicy < ApplicationPolicy
	attr_reader :post

    def initialize(user, post)
       super(user, post)
       @post = record
    end

	def update?
		user.admin? || @post.try(:user) == user
	end

end