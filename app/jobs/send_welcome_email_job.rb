# class SendWelcomeEmailJob < ApplicationJob  
#   def perform(user_id)
#   byebug
#     user = User.find(user_id)
#     ShippingConfirmationMailer.new_user_email(user).deliver_now
#   end
# end

# app/jobs/my_background_job.rb
class SendWelcomeEmailJob 
  include Sidekiq::Worker

  def perform(email)
    # Code to be executed in the background

    #puts "Performing job with arguments: #{email}"
    ShippingConfirmationMailer.new_user_email(email).deliver_now

    # Your code here...
  end
end
