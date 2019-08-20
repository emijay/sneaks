class ShoesController < ApplicationController

    def index
      @shoes = Shoe.select(:user_id).distinct
    end

    def show
      @shoe = Shoe.find(params[:id])
    end

    def new
      @brands = Brand.all
      @sizes = Size.all
      @id = current_user.id
    end

    def create
      p "saving"
      p shoe_params
      @shoe = Shoe.new(shoe_params)
      @shoe.save

      redirect_to owner_path(current_user.id)

    end

    def edit
      @shoe = Shoe.find(params[:id])
      @brands = Brand.all
      @sizes = Size.all
    end

    def update
      @shoe = Shoe.find(params[:id])
      @shoe.update(shoe_params)

      redirect_to shoe_path(params[:id])
    end

    def destroy
      @shoe = Shoe.find(params[:id])
      @shoe.destroy

      redirect_to shoes_path
    end




    private
      def shoe_params
        params.require(:shoes).permit(:brand_id, :size_id, :name, :color, :release_year, :style, :cost_price, :image_url, :description, :user_id)
      end
end