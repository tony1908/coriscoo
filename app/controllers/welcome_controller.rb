class WelcomeController < ApplicationController
	def index
		
	end

	def services
		@categories = Category.all
	end

	def serviceRequest
		@user = ''
	end

	def service
		@service = Photo.where(category_id:params[:id])
	end
	def about
		
	end
end
