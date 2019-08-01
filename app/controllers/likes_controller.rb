class LikesController < ApplicationController
        def index
            @likes = Like.all
        end
        def show
            @like = Like.find(params[:id])
        end
        def new
            @like = Like.new
        end
        def create
            @like = Like.new(like_params)
            if @like.save
                redirect_to like_path(@like)
            else 
                render :new
            end
        end
        def edit 
            @like = Like.find(params[:id])
        end
        def update
            @like = Like.update(like_params)
            if @like.save
                redirect_to like_path(@like)
            else 
                render :edit
            end
        end
        def destroy
            @like = Like.destroy(params[:id])
            redirect_to home_path
          end
          private
          def like_params
          end
          def find_like
            @like = Like.find(params[:id])
          end
    
    
end
