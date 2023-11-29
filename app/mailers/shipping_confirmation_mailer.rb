class ShippingConfirmationMailer < ApplicationMailer
    
    default from: 'taskcraftteamtest@gmail.com'
    
    def new_user_email(email)
        # u = User.find(id)
        mail(to: email, subject: "You got a new order!")
    end
end
