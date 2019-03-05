class FakeJob < ApplicationJob
  queue_as :default

  def perform
    puts 'Hello Ladies, im faking a job'
    sleep 3
    puts 'im all done faking now'
  end
end
