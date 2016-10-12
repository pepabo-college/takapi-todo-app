require 'clockwork'
include Clockwork

module Clockwork

  def one_seconds
    puts "secondly job"
  end

  handler do |job|
    self.send(job.to_sym)
  end
  
  every(1.seconds, 'one_seconds')

end
