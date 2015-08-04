class ServiceRequest < ApplicationMailer
	default :from => 'supports@corriscoconstrucction.com'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def service(first, last, date, phone, email, address, description)
  	@first = first || 'unknown'
  	@last = last || 'unknown'
  	@date = date || 'unknown'
  	@phone = phone || 'unknown'
  	@email = email || 'unknown'
  	@address = address || 'unknown'
  	@description = description || 'unknown'
    mail( :to => 'ricardos@coriscoconstruction.com',
    :subject => 'Service Request' ) 
  end
end
