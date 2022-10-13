class UsersController < ApplicationController

    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find(params[:id])
        render json: user, serializer: UserWithTrashSerializer  
        # remember UserWithTrashSerializer
    end

    def create
        new = User.create!(user_params)
        render json: new,  status: :created 
    end

    private

    def user_params
        params.permit(:strength, :hero_id, :power_id)
        #remember the permit
    end

    def render_not_found_response
        render json: { error: "User not found" }, status: :not_found
    end

    def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
end
