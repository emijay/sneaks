class HomesController < ApplicationController

    def index
      @shoes = Shoe.all.distinct
      @blogs = Blog.all
      @upcoming_shoes = UpcomingShoe.all

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

end