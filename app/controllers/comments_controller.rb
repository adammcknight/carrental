class CommentsController < ApplicationController
	before_filter :authorise
	
	def create
		@vehicle = Vehicle.find params[:vehicle_id]
		@comment = @vehicle.comments.new(comment_params)
		@comment.user_id = @current_user.id
		@comment.save
			#User.setRegular(@comment.user)
		respond_to do |format|
					format.html{redirect_to @vehicle}
		end
	end

	private
	def comment_params
		params.require(:comment).permit(:content, :vehicle_id, :user_id, :stars)
	end
end
