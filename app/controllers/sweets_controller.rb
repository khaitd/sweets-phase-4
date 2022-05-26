class SweetsController < ApplicationController

    def index
        sweet = Sweet.all
        render json: sweet
    end


    def show
        sweet = Sweet.find_by(id: params[:id])
        if sweet
           render json: sweet
        else
            render json: { error: "Sweet not found" }, status: :not_found
        end   
    end


end
