class PerrosController < ApplicationController
    def index
        @pers = Perro.all
    end

    def new
        @pers = Perro.new
    end

    def create
        @pers = Perro.new(perros_params)
        if @pers.save
            redirect_to perros_index_path
        else
            render :edit
        end
    end

    def edit
        @pers = Perro.find(params[:id])
    end
    def update
        @pers = Perro.find(params[:id])
        if @pers.update(perros_params)
            redirect_to perros_index_path
        else
            render :edit
        end
    end

    def perros_params
        params.require(:perro).permit(:nombre,:descrip)
    end
end
