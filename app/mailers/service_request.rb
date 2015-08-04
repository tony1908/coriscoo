class ServiceRequest < ApplicationMailer
	default :from => 'supports@corriscoconstrucction.com'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_signup_email(first, last, date, phone, email, address, description)
    mail( :to => email,
    :subject => 'Thanks for signing up for our amazing app' )
  end
end
