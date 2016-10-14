class Contact < MailForm::Base
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :phone_number
  attribute :message
  attribute :nickname,  :captcha  => true
  attribute :details

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "My Contact Form",
      :to => "emmanuel@nationale-7.fr",
      :from => "gael@nationale-7.fr"
    }
  end
end