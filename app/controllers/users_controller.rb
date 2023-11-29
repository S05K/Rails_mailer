class UsersController < ApplicationController
    def new 
        @user=User.new
    end
    def create 
        @user = User.new(user_params)
        if @user.save
            # ShippingConfirmationMailer.with(user: @user).new_user_email.deliver_now
            # byebug
            # SendWelcomeEmailJob.perform_now(@user.id)
            SendWelcomeEmailJob.perform_async(@user.email)
            render json: @user
        else 
            render json: "No"
        end
    end

    private
    def user_params
        params.require(:user).permit(:name, :email)
    end
end
