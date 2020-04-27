class InvitationMailer < ActionMailer::Base
  default :from => "#{Rails.application.name} <no-reply@#{Rails.application.domain}>"

  def invitation(invitation)
    @invitation = invitation

    mail(
      to: invitation.email,
      subject: "[#{Rails.application.name}] You are invited to join " <<
               Rails.application.name
    )
  end
end
