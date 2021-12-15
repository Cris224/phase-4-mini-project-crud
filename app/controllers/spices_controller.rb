class SpicesController < ApplicationController

    def index
        render json: Spice.all, status: :ok
    end

    def create
        spice = Spice.create(spice_params)
        render json: spice, status: :created
    end

    def destroy
        spice = Spice.find_by(id: params[:id])
        spice.destroy
        render json:{}
    end

    def update 
        spice = Spice.find_by(id: params[:id])
        spice.update(spice_params)
        render json: spice
    end


    private

    def spice_params
        params.permit(:title, :image, :description, :notes, :rating)
    end
end
