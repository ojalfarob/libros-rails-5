class FloresController < ApplicationController

    def index
        @flores = Flor.all
    end
end
