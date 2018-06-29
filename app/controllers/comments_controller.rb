class CommentsController < ApplicationController
	before_action :authenticate_user!


	def create
		comment = Comment.create(content: params[:comment][:content], post_id: params[:comment][:post_id], user_id: current_user.id)

		return redirect_to post_path(params[:comment][:post_id]) 

	end


	def destroy
		#Assignment
	end

end