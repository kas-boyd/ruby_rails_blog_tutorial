class PostsController < ApplicationController
    
    def index
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)

        if @post.save
            redirect_to @post 
        else
            render "new"
        end
    end

    def show
        @post = Post.find(params[:id])
    end 

    private # what is this?? why is it here and not somewhere else in the file? 

    def post_params
        params.require(:post).permit(:title, :content)
    end

end
