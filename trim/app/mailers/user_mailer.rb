class UserMailer < ApplicationMailer
  default from: "apprentice@trimagency.com"

  def apprentice_email(user)
    @user = user
    @url = "https://trimagency.com"
    mail(to: 'tim@trimagency.com', subject: 'new apprentice info')
  end
end
