class SessionsController < ApplicationController
	def create
  auth = request.env["omniauth.auth"]
  user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)
  session[:user_id] = user.id
  session[:user_uid] = user.uid
  redirect_to :action => "show", :controller => "users" , :notice => "Signed in!"
  end


  def destroy
  	 session[:user_id] = nil
  redirect_to root_url, :notice => "Signed out!"
  end
end
