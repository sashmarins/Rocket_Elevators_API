class ApplicationController < ActionController::Base 
    rescue_from CanCan::AccessDenied do
        flash[:error] = 'Access denied!'
        redirect_to root_url
      end
    # private
    # def authorize
    #     redirect_to root_path, alert: "Not authorized" if current_user.try(:admin) == false
    # end
end
