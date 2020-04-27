class PasswordReset < ActionMailer::Base
  default :from => "#{Rails.application.name} <no-reply@#{Rails.application.domain}>"

  def password_reset_link(user, ip)
    @user = user
    @ip = ip

    mail(
      :to => user.email,
      :subject => "[#{Rails.application.name}] Reset your password"
    )
  end
end
