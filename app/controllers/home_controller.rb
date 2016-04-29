class HomeController < ApplicationController
	def index
		if !user_signed_in?
			redirect_to new_user_registration_path, notice: "You need to be signed in for that."
		end
		@allFollows = current_user.all_follows
		@arrayOfIds = @allFollows.map(&:followable_id)
		@posts = Post.where(user_id: @arrayOfIds)
	end
end