class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def authorize_admin!
      unless current_user.admin?
        flash[:error] = "no puedes acceder a esta seccion"
        redirect_to root_path
      end
  end
end
