class PencilsController < ApplicationController
    before_action :set_book, only: [:show, :edit, :update, :destroy]

def index
    @pencil = Pencil.all
end

def new
    @pencil = Pencil.new
end

def create
    @pencil = Pencil.new(params)

    respond_to do |format|
        if @pencil.save
            format.html { redirect_to @pencil, notice: 'Book was successfully created.' }
            format.json { render :index, status: :created, location: @pencil }
            
        end
    end
end

def edit
    @pencil = Pencil.fin(params)
end

def params

    params.requiere(:pencil).permit(:name,:desc,:larg)

end

def update
    respond_to do |format|
      if @pencil.update(book_params)
        format.html { redirect_to @pencil, notice: 'Book was successfully updated.' }
        format.json { render :index, status: :ok, location: @pencil }
      else
        format.html { render :edit }
        format.json { render json: @pencil.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @pencil.destroy
    respond_to do |format|
      format.html { redirect_to pencils_url, notice: 'Book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

end
