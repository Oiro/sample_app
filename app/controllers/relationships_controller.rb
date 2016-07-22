class RelationshipsController < ApplicationController

	before_action :logged_in_user
	# responds_to :user
	# has_many :line_items


	def create

		@user = User.find(params[:followed_id])
		current_user.follow(@user)
		# redirect_to user
		respond_to do |format|
		# format.html { redirect_to @user }
		  format.html { redirect_to @user }
		  format.js
		end

	end
	

	def destroy

		@user = Relationship.find(params[:id]).followed
		current_user.unfollow(@user)
		# redirect_to user
		respond_to do |format|
		# format.html { redirect_to @user }
		  format.html { redirect_to @user }
		# format.json {head :no_content }
		# format.js { render :layout => false}
		  format.js
		end

	end
end
