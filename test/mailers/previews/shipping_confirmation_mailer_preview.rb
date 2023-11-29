# Preview all emails at http://localhost:3000/rails/mailers/shipping_confirmation_mailer
class ShippingConfirmationMailerPreview < ActionMailer::Preview
    
    def new_user_email
        user = User.new(name: "Sumit", email: "sr966903@gmail.com")

        ShippingConfirmationMailer.with(user: user).new_user_email
    end
end
