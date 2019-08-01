class PostsController < ApplicationController
    def index
        @posts = Post.all
    end
    def show
        @post = Post.find(params[:id])
    end
    def new
        @user = current_user
        @post = Post.new
    end
    def create
        @post = Post.new(post_params)
        if @post
            @post.save
            redirect_to post_path(@post)
        else 
            render :new
        end
    end
    def edit 
        @post = Post.find(params[:id])
    end
    def update
        @post = Post.update(post_params)
        if @post.save
            redirect_to post_path(@post)
        else 
            render :edit
        end
    end
    def destroy
        @post = post.destroy(params[:id])
        redirect_to home_path
      end
      private
      def post_params
        params.require(:post).permit(:title, :content, :user_id)
      end
      def find_post
        @post = Post.find(params[:id])
      end

end
