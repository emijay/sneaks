class BlogsController < ApplicationController

    def index
    end

    def show
    end

    def new
    end

    def create
    end

    def edit
    end

    def update
    end

    def destroy
    end




    private
      def blog_params
        params.require(:blogs).permit(:title, :content, :image_url)
      end
end