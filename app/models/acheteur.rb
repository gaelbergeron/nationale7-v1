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
  
  attribute :type_2
  attribute :marque_2
  attribute :modele_2
  attribute :transmission_2
  attribute :carburant_2
  attribute :annee_min_2
  attribute :annee_max_2
  attribute :kilometrage_min_2
  attribute :kilometrage_max_2
  attribute :prix_min_2
  attribute :prix_max_2

  attribute :type_3
  attribute :marque_3
  attribute :modele_3
  attribute :transmission_3
  attribute :carburant_3
  attribute :annee_min_3
  attribute :annee_max_3
  attribute :kilometrage_min_3
  attribute :kilometrage_max_3
  attribute :prix_min_3
  attribute :prix_max_3

  attribute :nom
  attribute :email, :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :phone_number
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