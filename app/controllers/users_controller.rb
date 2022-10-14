class UsersController < ApplicationController

    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

   

    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find(params[:id])
        render json: user, serializer: UserWithTrashSerializer  
    end

    def update
        user = User.find(params[:id])
        user.update!(user_params)
        render json: user

    end

    

    private


    def render_not_found_response
        render json: { error: "User not found" }, status: :not_found
    end

   
end
