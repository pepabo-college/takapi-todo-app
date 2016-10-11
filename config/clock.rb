require 'clockwork'
include Clockwork

require File.expand_path('../boot', __FILE__)
require File.expand_path('../environment', __FILE__)

module Clockwork

  def one_seconds
    Task.all.each do |task|
      p task.content
    end
  end

  handler do |job|
    self.send(job.to_sym)
  end

  every(1.seconds, 'one_seconds')

end
