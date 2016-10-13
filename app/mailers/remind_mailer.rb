class RemindMailer < ApplicationMailer
  default from: 'college@pepabo.com'

  def sendmail(task)
    @task = task
    email = ENV['NOTIFY_TO']
#    email = ENV['MAIL_ADDRESS']
    mail(to: email, subject: 'Todo Remider')
  end
end
