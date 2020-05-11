class EstudiantesController < ApplicationController
    def index
        @estudens = Estudiante.all
    end

    def new
        @estudens = Estudiante.new
    end

    def create
        @estudens = Estudiante.new(estudianes_params)
        if @estudens.save
            redirect_to estudiantes_index_path
        else
            render :new
        end
    end


    def edit
        @estudens = Estudiante.find(params[:id])
    end

    def update
        @estudens = Estudiante.find(params[:id])
        if @estudens.update(estudianes_params)
            redirect_to estudiantes_index_path
        else
            render :edit
        end
    end

    def delete
        @estudens = Estudiante.find(params{:id})
        if @estudens.destroy
            redirect_to estudiantes_index_path
        end

    end

    private
    def estudianes_params
        params.require(:estudiante).permit(:nombre,:edad)
        
    end
end
