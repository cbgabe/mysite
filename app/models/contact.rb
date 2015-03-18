class Contact < MailForm::Base
  attribute :name,       :validate => true
  attribute :email,      :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message
  attribute :attachment, :validate => true

  def headers
    {
      :subject => "Meu formulário",
      :to => "cbgabe@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end