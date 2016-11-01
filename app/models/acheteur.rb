class Acheteur < MailForm::Base
  attribute :type_1
  attribute :marque_1
  attribute :modele_1
  attribute :transmission_1
  attribute :carburant_1
  attribute :annee_min_1
  attribute :annee_max_1
  attribute :kilometrage_min_1
  attribute :kilometrage_max_1
  attribute :prix_min_1
  attribute :prix_max_1

  attribute :nom
  attribute :email, :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
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
      :subject => "Nouvelle alerte acheteur",
      :to => "gael@nationale-7.fr",
      :from => "gael@nationale-7.fr"
    }
  end
end