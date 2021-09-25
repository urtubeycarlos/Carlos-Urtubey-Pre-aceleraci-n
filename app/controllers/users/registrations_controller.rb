class Users::RegistrationsController < Devise::RegistrationsController
    respond_to :json
  
    private
  
    def respond_with(resource, _opts = {})
      register_success && return if resource.persisted?
      register_failed
    end
  
    def register_success
      SignUpMailer.with(user: resource).welcome_email.deliver_now
      render json: { message: 'Signed up sucessfully.' }
    end
  
    def register_failed
      render json: { message: "Something went wrong." }
    end
end