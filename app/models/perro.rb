class Perro < ApplicationRecord
    def index
        @perros = Perro.all
    end
end
