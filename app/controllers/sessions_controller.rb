class SessionsController < ApplicationController
    # before_action :authorize, :except => :login, :signup
    
    def login
        @user = User.find_by_username(user_params[:username]) 
        if @user && @user.authenticate(user_params[:password])
            token = encode_token({user_id: @user.id})
            render json: {user: @user, token: token}, status: :ok
         else
            render json: {error:"Invalid Email or password"}, status: :unprocessable_entity  
        end    
    end

    def signup
        user = User.create!(user_params)
        token = encode_token({user_id: user.id})
        render json: {user: user, token: token}, status: :ok
    end
end
