class JobMailer < ApplicationMailer
  default from: "noreply@myworldapp.com"



  def approved_notification(user, job)
    @user = user
    @job = job
    mail(to: @user.email, subject: 'Solicitud de trabajo aceptada')
  end

end
