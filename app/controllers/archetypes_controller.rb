class ArchetypesController < ApplicationController
  
  def index
    @archetypes = Archetype.all
    @archetype = Archetype.new
  end

  def show
    @archetypes = Archetype.all
  end

  def new
    @archetype = Archetype.new
  end

  def create
    @archetype = Archetype.new(archetype_params)
    respond_to do |format|
        if @archetype.save!
          format.html { redirect_to archetypes_path, notice: "El Tipo fue creado correctamente" }
        else
          format.html { render :new}
        end
    end
  end

  def edit
		@archetype = Archetype.find(params[:id])
	end

  def update
    @archetype = Archetype.find(params[:id])
    respond_to do |format|
      if @archetype.update(archetype_params)
        format.html { redirect_to @archetype, notice: "El Tipo fue actualizado correctamente" }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @archetype = Archetype.find(params[:id])
    @archetype.destroy
    respond_to do |format|
      format.html { redirect_to @archetype, notice: "El Tipo fue eliminado correctamente" }
    end
  end

  private

  def archetype_params
    params.require(:archetype).permit(:name)
  end
end
