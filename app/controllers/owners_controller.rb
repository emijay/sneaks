class OwnersController < ApplicationController

    def index
      @shoes = Shoe.select(:user_id).distinct
    end

    def show
      @id = params[:id].to_s

      @brands = Brand.all

      @owner = User.where(id: params[:id])

      if request.query_parameters[:sort] == "r_date"
        @shoes = Shoe.where(user_id: params[:id]).order(created_at: :desc)

      elsif request.query_parameters[:sort] == "o_date"
        @shoes = Shoe.where(user_id: params[:id]).order(created_at: :asc)

      elsif request.query_parameters[:sort] == "h_price"
        @shoes = Shoe.where(user_id: params[:id]).order('cost_price::integer DESC')

      elsif request.query_parameters[:sort] == "l_price"
        @shoes = Shoe.where(user_id: params[:id]).order('cost_price::integer ASC')

      else
        @shoes = Shoe.where(user_id: params[:id])
      end
    end

    def new

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

      # def filter_params
      #   params.require(:filters).permit(:brand_ids => [])
      # end
end