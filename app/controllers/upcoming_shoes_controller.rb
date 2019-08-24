class UpcomingShoesController < ApplicationController

    def index
      @upcoming_shoes = UpcomingShoe.all
    end

    def show
      @upcoming_shoe = UpcomingShoe.find(params[:id])
    end

    def new
      @brands = Brand.all
    end

    def create
      @upcoming_shoe = UpcomingShoe.new(upcoming_shoe_params)
      @upcoming_shoe.save

      redirect_to upcoming_shoe_path(@upcoming_shoe.id)
    end

    def edit
      @upcoming_shoe = UpcomingShoe.find(params[:id])
      @brands = Brand.all
    end

    def update
      @upcoming_shoe = UpcomingShoe.find(params[:id])
      @upcoming_shoe.update(upcoming_shoe_params)

      redirect_to upcoming_shoe_path(params[:id])
    end

    def destroy
      @upcoming_shoe = UpcomingShoe.find(params[:id])
      @upcoming_shoe.destroy

      redirect_to upcoming_shoes_path
    end

    private
      def upcoming_shoe_params
        params.require(:upshoes).permit(:name, :brand_id, :image_url, :release_date, :retail_price)
      end
end