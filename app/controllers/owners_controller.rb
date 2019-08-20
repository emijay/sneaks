class OwnersController < ApplicationController

    def index
      @shoes = Shoe.select(:user_id).distinct
    end

    def show
      if request.query_parameters[:sort] == "r_date"
        p 'rdate'
        @shoes = Shoe.where(user_id: params[:id]).order(created_at: :desc)
        # @shoes.sort_by {|shoe| shoe.name }
        # @shoes.order(id: :desc)
        @id = params[:id].to_s

      elsif request.query_parameters[:sort] == "o_date"
        p 'odate'
        @shoes = Shoe.where(user_id: params[:id]).order(created_at: :asc)
        # @shoes.sort_by {|shoe| shoe.name }.reverse
        # @shoes.order(id: :asc)
        @id = params[:id].to_s

      else
        @shoes = Shoe.where(user_id: params[:id])
        @id = params[:id].to_s
      end

    end

    def new
      @brands = Brand.all
      @sizes = Size.all
    end

    def create
      p "saving"
      p shoe_params
      @shoe = Shoe.new(shoe_params)
      @shoe.save

      redirect_to shoes_path

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