class PerrosController < ApplicationController
    def index
        @perros = Perro.all
    end
end
