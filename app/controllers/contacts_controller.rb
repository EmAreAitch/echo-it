class ContactsController < StoreController
  def new
  end

  def create
      contact = params.expect(contact: [ :name, :email, :message ])
      ContactMailer.contact_email(contact).deliver_later  # Use deliver_now for immediate sending
      redirect_to new_contact_path, notice: "Your message has been sent successfully."
  end
end
