class ShoesController < ApplicationController

    def index
      # @shoes = Shoe.all.paginate(:page => params[:page], :per_page => 9)
      @brands = Brand.all
      @filters = request.query_parameters[:filter]
      @years = request.query_parameters[:year]
      @releases = Shoe.select(:release_year).order(:release_year => :desc).distinct

      if !@filters && !@years

          p 'going to the no filters'
          if request.query_parameters[:sort] == "r_date"
            @shoes = Shoe.all.order(created_at: :desc).paginate(:page => params[:page], :per_page => 9)

          elsif request.query_parameters[:sort] == "o_date"
            @shoes = Shoe.all.order(created_at: :asc).paginate(:page => params[:page], :per_page => 9)

          elsif request.query_parameters[:sort] == "h_price"
            @shoes = Shoe.all.order('cost_price::integer DESC').paginate(:page => params[:page], :per_page => 9)

          elsif request.query_parameters[:sort] == "l_price"
            @shoes = Shoe.all.order('cost_price::integer ASC').paginate(:page => params[:page], :per_page => 9)

          else
            @shoes = Shoe.all.paginate(:page => params[:page], :per_page => 9)
          end

      elsif @filters && !@years

          if request.query_parameters[:sort] == "r_date"
            @shoes = Shoe.where(brand_id: @filters).order(created_at: :desc).paginate(:page => params[:page], :per_page => 9)

          elsif request.query_parameters[:sort] == "o_date"
            @shoes = Shoe.where(brand_id: @filters).order(created_at: :asc).paginate(:page => params[:page], :per_page => 9)

          elsif request.query_parameters[:sort] == "h_price"
            @shoes = Shoe.where(brand_id: @filters).order( 'cost_price::integer DESC').paginate(:page => params[:page], :per_page => 9)

          elsif request.query_parameters[:sort] == "l_price"
            @shoes = Shoe.where(brand_id: @filters).order('cost_price::integer ASC').paginate(:page => params[:page], :per_page => 9)

          else
            @shoes = Shoe.where(brand_id: @filters).paginate(:page => params[:page], :per_page => 9)
          end

      elsif !@filters && @years

          if request.query_parameters[:sort] == "r_date"
            @shoes = Shoe.where(release_year: @years).order(created_at: :desc).paginate(:page => params[:page], :per_page => 9)

          elsif request.query_parameters[:sort] == "o_date"
            @shoes = Shoe.where(release_year: @years).order(created_at: :asc).paginate(:page => params[:page], :per_page => 9)

          elsif request.query_parameters[:sort] == "h_price"
            @shoes = Shoe.where(release_year: @years).order( 'cost_price::integer DESC').paginate(:page => params[:page], :per_page => 9)

          elsif request.query_parameters[:sort] == "l_price"
            @shoes = Shoe.where(release_year: @years).order('cost_price::integer ASC').paginate(:page => params[:page], :per_page => 9)

          else
            @shoes = Shoe.where(release_year: @years).paginate(:page => params[:page], :per_page => 9)
          end

      else

          if request.query_parameters[:sort] == "r_date"
            @shoes = Shoe.where(brand_id: @filters, release_year: @years).order(created_at: :desc).paginate(:page => params[:page], :per_page => 9)

          elsif request.query_parameters[:sort] == "o_date"
            @shoes = Shoe.where(brand_id: @filters, release_year: @years).order(created_at: :asc).paginate(:page => params[:page], :per_page => 9)

          elsif request.query_parameters[:sort] == "h_price"
            @shoes = Shoe.where(brand_id: @filters, release_year: @years).order('cost_price::integer DESC').paginate(:page => params[:page], :per_page => 9)

          elsif request.query_parameters[:sort] == "l_price"
            @shoes = Shoe.where(brand_id: @filters, release_year: @years).order('cost_price::integer ASC').paginate(:page => params[:page], :per_page => 9)

          else
            @shoes = Shoe.where(brand_id: @filters, release_year: @years).paginate(:page => params[:page], :per_page => 9)
          end

      end

      respond_to do |format|
        format.html
        format.js
      end
    end

    def show
      @shoe = Shoe.find(params[:id])
      @images = [@shoe.first_image_url, @shoe.second_image_url, @shoe.third_image_url, @shoe.fourth_image_url]
      @hiddenstyle = @shoe.style
      @hiddensize = @shoe.size.size

    end

    def new
      @brands = Brand.all
      @sizes = Size.all
      @id = current_user.id
    end

    def create
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
        params.require(:shoes).permit(:brand_id, :size_id, :name, :color, :release_year, :style, :cost_price, :first_image_url, :second_image_url, :third_image_url, :fourth_image_url, :description, :user_id)
      end
end