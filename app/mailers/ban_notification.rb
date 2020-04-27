class BanNotification < ActionMailer::Base
  default :from => "#{Rails.application.name} <no-reply@#{Rails.application.domain}>"

  def notify(user, banner, reason)
    @banner = banner
    @reason = reason

    mail(
      :from => "#{@banner.username} <no-reply@#{Rails.application.domain}>",
      :replyto => "#{@banner.username} <ban-appeal@#{Rails.application.domain}>",
      :to => user.email,
      :subject => "[#{Rails.application.name}] You have been banned"
    )
  end
end
