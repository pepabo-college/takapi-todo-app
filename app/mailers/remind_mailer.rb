class RemindMailer < ApplicationMailer
  default from: "ncl0709@gmail.com"
  
  def sendmail
    @task = "Send Mail"
    #email = 's1u7v5x3t3m5t8d5@pepabo.slack.com'
    #email = 'nakamura.k@pepabo.com'
    email = 'ncl0709@gmail.com'
    mail(to: email, subject: 'Todo Remider')
  end
end
