class PlantsController < ApplicationController

    #disable JSON formating
    wrap_parameters format: []

    #display a list of all plants
    def index
        plants = Plant.all
        render json: plants, status: :ok
    end

    #create a new plant
    def create
        plant = Plant.create(plant_params)
        render json: plant, status: :created
    end

    #display specific plant
    def show
        plant = Plant.find_by(id: params[:id])

        if plant
            render json: plant, status: :ok
        else
            render json: {error: "Plant not found"}, status: :not_found
        end
    end

    # refactor parameters (Strong Parameters)
    # declare it as a private method
    private

    def plant_params
        params.permit(:name, :image, :price)
    end
    
end
