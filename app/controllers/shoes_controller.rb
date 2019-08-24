class ShoesController < ApplicationController

    def index
      @shoes = Shoe.all.paginate(:page => params[:page], :per_page => 5)

      respond_to do |format|
        format.html
        format.js
      end
    end

    def show
      @shoe = Shoe.find(params[:id])
      @images = [@shoe.first_image_url, @shoe.second_image_url, @shoe.third_image_url, @shoe.fourth_image_url]


      # require 'net/http'
      # require 'json'
      # url = "https://api.suplexed.com/v2/pricer_web.php?p_type=snkrs&p_var1=#{@shoe.style}"
      # uri = URI(url)

      # response = Net::HTTP.get(uri)
      # response2 = JSON.parse(response)
      # @arrays = response2["sizes"]
      # @rows = @arrays.select { |item| item["size"] == @shoe.size.size }

      # if @rows.empty?
      #   @stockx = "No Results"
      #   @goat = "No Results"
      #   @flightclub = "No Results"

      # else
      #   @stockx = "$#{@rows[0]["stockx"]}"
      #   @goat = "$#{@rows[0]["goat"]}"
      #   @flightclub = "$#{@rows[0]["flightclub"]}"

      #   puts "StockX Price: #{@stockx}"
      #   puts "GOAT Price: #{@goat}"
      #   puts "FlightClub Price: #{@flightclub}"
      # end
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