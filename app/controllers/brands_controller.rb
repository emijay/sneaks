class BrandsController < ApplicationController

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
      def brand_params
        params.require(:brands).permit(:location, :phone)
      end
end