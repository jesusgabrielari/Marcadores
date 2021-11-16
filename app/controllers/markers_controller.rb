class MarkersController < ApplicationController
  
  def index
    @markers = Marker.all
    @marker = Marker.new
    @categories = Category.all
    @archetypes = Archetype.all
  end

  def show
    @markers = Marker.all
  end

  def new
    @marker = Marker.new
    @categories = Category.all
    @archetypes = Archetype.all
  end

  def create
    @marker = Marker.new(marker_params)
    @categories = Category.all
    @archetypes = Archetype.all
    respond_to do |format|
        if @marker.save!
          # format.html { redirect_to markers_path, notice: "El Marcador fue creado correctamente" }
          format.js { render nothing: true, notice: 'El Marcador fue creado correctamente' }
        else
          format.html { render :new}
        end
    end
  end

  def edit
		@marker = Marker.find(params[:id])
    @categories = Category.all
    @archetypes = Archetype.all
	end

	def update
		@marker = Marker.find(params[:id])
    @categories = Category.all
    @archetypes = Archetype.all
		respond_to do |format|
      if @marker.update(marker_params)
        # format.html { redirect_to markers_path, notice: "El Marcador fue actualizado correctamente" }
        format.js { render nothing: true, notice: 'El Marcador fue actualizado correctamente' }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
		end
	end
  
  def destroy
    @marker = Marker.find(params[:id])
    @marker.destroy
    respond_to do |format|
      # format.html { redirect_to marker_url, notice: "El Marcador fue eliminado correctamente" }
      format.js { render nothing: true, notice: 'El Marcador fue eliminado correctamente' }
    end
  end

  private

  def marker_params
    params.require(:marker).permit(:name, :category_id, :archetype_id)
  end
end