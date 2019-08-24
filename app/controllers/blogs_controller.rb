class BlogsController < ApplicationController

    def index
      @blogs = Blog.all
    end

    def show
      @blog = Blog.find(params[:id])
    end

    def new
    end

    def create
      @blog = Blog.new(blog_params)
      @blog.save

      redirect_to blogs_path
    end

    def edit
      @blog = Blog.find(params[:id])
    end

    def update
      @blog = Blog.find(params[:id])
      @blog.update(blog_params)

      redirect_to blogs_path
    end

    def destroy
      @blog = Blog.find(params[:id])
      @blog.destroy

      redirect_to blogs_path
    end

    private
      def blog_params
        params.require(:blogs).permit(:title, :content, :image_url)
      end
end