class MascotasController < ApplicationController
    def index
        @mascotas = Mascotum.all
    end

    def new
        @mascotas = Mascotum.new 
    end

    def create
        @mascotas = Mascotum.new(pro_params)
        if @mascotas.save
        redirect_to mascotas_index_path
        else
           render :new
        end
    end


    def pro_params
        params.require(:mascotas).permit(:nombre,:descrip,:cantidad)
    end
end
