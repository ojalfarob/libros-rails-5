class EstudiantesController < ApplicationController
    def index
        @estudens = Estudiante.all
    end

end
