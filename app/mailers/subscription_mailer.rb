class SubscriptionMailer < ApplicationMailer
  def send_data
    @first_name = params[:first_name]
    @last_name  = params[:last_name]
    @email   = params[:email]
    mail(to: 'pierre.waechter@yahoo.fr', subject: 'Welcome to My Awesome Site')
  end
end
