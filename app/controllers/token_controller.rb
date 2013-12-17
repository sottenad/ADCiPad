class TokenController < ApplicationController
  skip_before_filter :authenticate_user!
    def gettoken
	  user = User.find_by_username(params[:username])
	  password = params[:password]
	  #user.ensure_authentication_token!
	  if user && user.encrypted_password == BCrypt::Engine.hash_secret(password, user.encrypted_password)
	  	render :json=> {
	  		:success=>true, 
	  		:auth_token=>user.authentication_token, 
	  		:username=>user.username,
	  		:price_multiplier=>user.price_multiplier,
	  		:user_id =>user.id
	  	}
	  else
	    render :json => {:error => "Invalid login or password."}, :status => :unauthorized;
	  end
	end
end