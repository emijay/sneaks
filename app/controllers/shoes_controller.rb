class ShoesController < ApplicationController

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
      def shoe_params
        params.require(:shoes).permit(:location, :phone)
      end
end