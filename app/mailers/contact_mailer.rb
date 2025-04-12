class ContactMailer < ApplicationMailer
  default from: "dev.emareaitch@gmail.com"  # Change this to a valid sender email address

  def contact_email(contact)
    @contact = OpenStruct.new(contact.to_h)
    mail(
      to: "rahibhasanjims@gmail.com",
      subject: "New Contact Form Submission from #{@contact.name}"
    ) do |format|
      format.text { render plain: "Message from #{@contact.name} (#{@contact.email}):\n\n#{@contact.message}" }
      format.html { render html: "<h1>Message from #{@contact.name} (#{@contact.email}):</h1><p>#{@contact.message}</p>".html_safe }
    end
  end
end
