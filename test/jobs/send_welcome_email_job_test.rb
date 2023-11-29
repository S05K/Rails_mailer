require 'test_helper'

class SendWelcomeEmailJobTest < ActiveJob::TestCase
  # test "the truth" do
  #   assert true
  # end
  queue_as :default
  def perform(user_id)
  byebug
    user = User.find(user_id)
    ShippingConfirmationMailer.new_user_email(user).deliver_now
  end
end
