class TrashesController < ApplicationController
    def create
        trash = Trash.create!(trash_params)
        render json: trash, status: :created

    end

    private

    def trash_params
        params.permit(:description, :image, :lattitude, :longitude)
    end
end
