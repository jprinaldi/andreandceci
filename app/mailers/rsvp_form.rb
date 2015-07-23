class RSVPForm < MailForm::Base
  attribute :name, validate: true
  attribute :guest_count, validate: true
  attribute :song_request, validate: true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "RSVP Form",
      :to => "juampi@juampi.com",
      :from => "André and Ceci <info@andreandceci.com>"
    }
  end
end