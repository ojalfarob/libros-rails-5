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

    def edit
        @mascotas = Mascotum.find(params[:id]) 
    end

    def update
        @mascotas = Mascotum.find(params[:id])
        if @mascotas.update(pro_params)
        redirect_to mascotas_index_path
        else
           render :edit
        end
    end

    def destroy
        @mascotas = Mascotum.find(params[:id])
        if @mascotas.destroy
        redirect_to mascotas_index_path
        end
    end


    def pro_params
        params.require(:mascotum).permit(:nombre,:descrip,:cantidad)
    end
end
