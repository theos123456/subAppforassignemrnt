class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
  
    def new
        @users = User.all
            @levels = Level.all.collect { |m| [m.name, m.id] }
          build_resource({})
          respond_with self.resource
          end


    protected
  
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:level_id, :first_name, :middle_name, :last_name, :reg])
    end
  end