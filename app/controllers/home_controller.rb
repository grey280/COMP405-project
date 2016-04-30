class HomeController < ApplicationController
	def index
		if !user_signed_in?
			redirect_to new_user_registration_path, notice: "You need to be signed in for that."
		else 
			@allFollows = current_user.all_follows
			@arrayOfIds = @allFollows.map(&:followable_id)
			@posts = Post.where(user_id: @arrayOfIds).order(created_at: :desc)
		end
	end
end