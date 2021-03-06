class Contact < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message
  attribute :country

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Nouvelle demande sur www.vinspourexpats.com",
      :to => "mulliez.thomas@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end
