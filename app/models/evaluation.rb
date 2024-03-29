class Evaluation < MailForm::Base
  attribute :nom
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :phone_number
  attribute :description
  # attribute :modele
  # attribute :annee
  # attribute :motorisation
  # attribute :finition
  # attribute :kilometrage
  attribute :code_postal
  attribute :nickname,  :captcha  => true
  attribute :details

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Nouvelle demande d'évaluation",
      :to => "emmanuel@nationale-7.fr",
      :from => "gael@nationale-7.fr"
    }
  end
end