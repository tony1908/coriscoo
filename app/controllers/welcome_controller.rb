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
		ServiceRequest.service(params[:description],params[:email], params[:first],params[:last], Time.now ,params[:phone], params[:address]).deliver
      	redirect_to(action: 'serviceRequest')
	end

	def service
		@service = Photo.where(category_id:params[:id])
	end
	def about
		
	end
	def employment
		@employment2 = ''
	end
	def formEmployment
		@employment = Employment.new employment_params
		if @employment.save!
			ServiceRequest.employment(@employment.pdf.url, @employment.name).deliver
			redirect_to(action: 'employment')
		else
			redirect_to(action: 'index')
		end
	end

	protected
	def employment_params
		params.permit(:name, :pdf)
	end
end
