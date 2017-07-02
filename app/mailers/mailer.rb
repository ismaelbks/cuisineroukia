class Mailer < ActionMailer::Base

  layout 'mailer'

  def contact_form(contact)
    @contact = contact
    @to = 'contact@cuisinederoukia.fr'
    @from = 'cuisinederoukia.fr'
    
    mail(to: @to, from: @from, subject: 'Nouveau contact depuis le site !') do |f|
      f.html
    end
  end

end