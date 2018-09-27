class ContactMailer < ApplicationMailer

  default to: 'afranco@aldofranco.com', subject: 'Contact Form'

  def contact(name, email, comments)
    @name = name
    @email = email
    @comments = comments
    mail
  end

end
