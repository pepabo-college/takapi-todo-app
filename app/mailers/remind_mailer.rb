class RemindMailer < ApplicationMailer
  default from: 'college@pepabo.com'

  def sendmail
    @task = "Send Mail"
    email = ENV['NOTIFY_TO']
    mail(to: email, subject: 'Todo Remider')
  end
end
