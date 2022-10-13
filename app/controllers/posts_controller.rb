class PostsController < ApplicationController
   before_action :authorized

    def index
        posts = Post.all
        render json: posts
    end

    def create
        post = Post.create!(post_params.merge(user:@user))
        render json: post, status: :created
    end

    private
    def post_params
        params.permit(:description, :image)
    end
end
