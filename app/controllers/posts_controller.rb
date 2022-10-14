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

    def destroy
        post = Post.find(params[:id])
        post.destroy
        head :no_content
    end

    def update
        post = Post.find(params[:id])
        post.update!(post_params)
        render json: post
    end

    private
    def post_params
        params.permit(:description, :image)
    end
end
