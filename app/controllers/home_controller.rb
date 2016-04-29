class HomeController < ApplicationController
	def index
		if !user_signed_in?
			redirect_to new_user_registration_path, notice: "You need to be signed in for that."
		end
	end
end