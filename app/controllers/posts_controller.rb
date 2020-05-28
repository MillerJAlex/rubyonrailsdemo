class PostsController < ApplicationController

    def index
       @posts = Post.paginate(page: params[:page])
    end 

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)

        if @post.save
            respond_to do |format|
                format.js
                format.html { redirect_to posts_path }
            end
        else
            render 'index'
        end
    end

    def show
        @post = Post.find(params[:id])
    end

    private
    def post_params
        params.require(:post).permit(:title, :name, :content)
    end
end
