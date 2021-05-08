class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def confirm
    @contact = Contact.new(contact_params)
    if @contact.invalid?
      render :new
    end
  end

  def back
    @contact = Contact.new(contact_params)
    render :new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      ContactMailer.contact_mail(@contact).deliver_now
      redirect_to done_path
    else
      render :new
    end
  end

  def done
  end

  def send_mail(inquiry)
    @inquiry = inquiry
    mail(
      from: 'system@example.com',
      to:   'manager@example.com',
      subject: 'お問い合わせ通知'
    )
  end

  private

  def contact_params
    params.require(:contact)
          .permit(:email, :name, :message)
  end
end
