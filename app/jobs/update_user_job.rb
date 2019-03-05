class UpdateUserJob < ApplicationJob
  queue_as :default

  def perform(user_id)
    user = User.find(user_id)
    puts "Calling Clearbit API for #{user.email}..."
    # TODO: perform a time consuming task like Clearbit's Enrinchment API.
    sleep 2
    puts "Done! Enriched #{user.email} with Clearbit"
  end
end
