class Mailer < ActionMailer::Base
 
  layout 'mailer'
 
  def contact_form(contact)
    @contact = contact
    @to = "ismael.boukhars@kedgebs.com"
 
    mail(to: @to, subject: "Nouveau contact depuis le site") do |format|
      format.html
    end
  end
 
end