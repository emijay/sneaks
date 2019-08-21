class SizesController < ApplicationController

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
      def size_params
        params.require(:sizes).permit(:location, :phone)
      end
end