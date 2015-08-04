class WelcomeController < ApplicationController
	def index
		
	end

	def services
		@categories = Category.all
	end

	def serviceRequest
		@user = ''
	end

	def emailSend 
		ServiceRequest.service(params[:description],params[:email], params[:first],params[:last], params[:date],params[:phone], params[:address]).deliver
      	redirect_to(action: 'serviceRequest')
	end

	def service
		@service = Photo.where(category_id:params[:id])
	end
	def about
		
	end
end
