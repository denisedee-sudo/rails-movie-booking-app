class ApplicationController < ActionController::Base

    helper_method :current_user 
 
    def current_user 
    @current_user ||= User.find(session[:user_id]) if session[:user_id] 
    end 

    def require_user 
        redirect_to '/login' unless current_user 
    end
    
    def require_admin
      # redirect_to '/' unless current_user && current_user.admin?
     if (current_user && current_user.admin?)
      true
     elsif(current_user)
      redirect_to '/'
     else
      redirect_to '/login'
     end
    end  
    
end
