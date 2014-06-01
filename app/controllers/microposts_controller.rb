class MicropostsController <ApplicationController
	before_action :signed_in_user, only: [:create, :destroy]

	def create
		@micropost = current_user.microposts.build(micropost_params)
		if @micropost.save
			flash[:success] = "Micropost created!"
			redirect_to root_url
		else
			flash[:failure] = "Micropost failed, please try again"
			render 'welcome/hello'
		end
	end

	def new
		@micropost = Micropost.new
	end

	def destroy
		@micropost.destroy
		redirect_to root_url
	end

	private

	def micropost_params
		params.require(:micropost).permit(:content, :photo, :signature, :created_at, :bytes, :type, :etag, :url, :secure_url)
	end

	def correct_user
		@micropost = current_user.microposts.find_by(id: params[:id])
		redirect_to root_url if @micropost.nil?
	end
end
