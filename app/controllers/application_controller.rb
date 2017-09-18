class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
 
 def index
    
    #other alternatives are

    # flash[:warn ] = "Israel don't quite like warnings"

    #flash[:danger ] = "Naomi let the dog out!"
end

end
