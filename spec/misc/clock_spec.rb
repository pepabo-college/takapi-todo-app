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

  it "" do
    expect(@for_test).to receive(:_show).with("コンテンツ").once
    allow(RemindMailer).to receive(:sendmail).and_return(true)
    @for_test.reminder_mail
  end

end
