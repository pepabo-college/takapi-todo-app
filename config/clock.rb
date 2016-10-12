require 'clockwork'
include Clockwork

require File.expand_path('../boot', __FILE__)
require File.expand_path('../environment', __FILE__)

module Clockwork

  def reminder_mail
    Task.where("duedate <= ?", Date.today).each do |task|
      _show task.content
    end
  end

  def _show(str)
    p str
  end

  handler do |job|
    self.send(job.to_sym)
  end

  every(1.day, 'reminder_mail', at: '09:00')

end
