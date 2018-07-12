class ContactMailer < ApplicationMailer

  default to: 'roberto_car_av@hotmail.com', subject: 'Contact Form'

  def contact(name, email, comments)
    @name = name
    @email = email
    @comments = comments
    mail
  end

end
