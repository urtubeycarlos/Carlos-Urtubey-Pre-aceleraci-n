class SignUpMailer < ApplicationMailer
    default from: "test.rails.urtubeyc@gmail.com"

    def welcome_email
        @user = params[:user]
        mail(to: @user.email, subject: "Welcome to Disney's API")
    end
end
