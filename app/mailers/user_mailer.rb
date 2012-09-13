class UserMailer < ActionMailer::Base
  default :from => "mailertester225@gmail.com"
  
  def registration_confirmation(user)
    @user = user
    mail(:to => user.email, :subject => "Registeration")
  end
end