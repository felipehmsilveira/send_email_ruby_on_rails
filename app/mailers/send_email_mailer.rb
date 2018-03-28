class SendEmailMailer < ApplicationMailer

  default from: 'felipehmsilveira@gmail.com'

  def welcome_email(link, to)
  	@link = link
    mail(to: to, subject: 'BOLETO PAY EASY TICKET')
  end

end
