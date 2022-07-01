class UsersController < ApplicationController
    before_action :authenticate_user!
    load_and_authorize_resource
    def show
        @user = User.find(params[:id])
    end
    def accessAdmin
        @accessAdmin = "/admin".accessible_by(user.admin?)
    end
    if user.admin?
        can :read, @accessAdmin
        link_to "/admin", @accessAdmin
    end
end
