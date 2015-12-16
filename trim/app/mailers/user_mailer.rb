class UserMailer < ApplicationMailer
  default from: "apprentice@trimagency.com"

  def send_apprentice_email(user)
    @user = user
    mail(to: 'tim@trimagency.com', subject: 'new apprentice info')
  end
end
