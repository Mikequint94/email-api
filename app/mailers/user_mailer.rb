class UserMailer < ApplicationMailer
  
  default from: "mjq8@cornell.edu"
  
  # layout "mailer"
  
  def send_email(email)
    @email = email
    mail(to: @email.to, subject: @email.subject)
  end
end
