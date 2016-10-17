# coding: utf-8
require 'rails_helper'
require Rails.root.join('config/clock')

class ForTest
  include Clockwork
end

describe "clock.rb" do

  before do
    @for_test = ForTest.new
    Task.new(
      content: "コンテンツ",
       status: "todo",
       duedate: Date.yesterday.to_s
    ).save
  end

  after do
    Task.delete_all
  end

  it "_showでメッセージを受け取ること" do
    expect(@for_test).to receive(:_show).with("コンテンツ").once
    mailer = double(RemindMailer, deliver: true)

    allow(RemindMailer).to receive(:sendmail).and_return(mailer)
    @for_test.reminder_mail
  end

  it "通知メールが送られること" do
    allow(@for_test).to receive(:_show).with("コンテンツ")

    mailer = double(RemindMailer, deliver: true)
    expect(RemindMailer).to receive(:sendmail).and_return(mailer)

    @for_test.reminder_mail
  end

end
