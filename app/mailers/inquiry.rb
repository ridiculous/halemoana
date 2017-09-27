class Inquiry < ActionMailer::Base
  default from: 'Hale Moana <admin@halemoana.com>'

  def new_inquiry(contact)
    @contact = contact
    @date_range = DateRange.new(@contact.arrival_date, @contact.departure_date)
    mail(to: 'Rebecca <hanamauirentals@gmail.com>', subject: 'New inquiry for Hale Moana', bcc: 'Ryan <arebuckley@gmail.com>')
  end

end
