class WelcomeController < ApplicationController
	def index
		@estado1 = 'active'
		
	
	end

	def services
		@categories = Category.all
		
		@estado2 = 'active'
		
		
	end

	def serviceRequest
		@user = ''
		@estado3 = 'active'
	end

	def emailSend 
		ServiceRequest.service(params[:description],params[:email], params[:first],params[:last], Time.now ,params[:phone], params[:address]).deliver
      	redirect_to(action: 'serviceRequest')
	end

	def service
		@title = params[:title]
		@service = Photo.where(category_id:params[:id])
		@estado2 = 'active'
	end
	def about
		
	end
	def employment
		@employment2 = ''
		@estado4 = 'active'
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

	def construction
		@categories = Category.all
		# @categories = Category.where(type_id:2)
		
		@estado2 = 'active'
	end

	def landscaping
		@categories = Category.where(type_id:1)
		
		@estado2 = 'active'
	end

	protected
	def employment_params
		params.permit(:name, :pdf)
	end
end
