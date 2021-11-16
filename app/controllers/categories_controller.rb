class CategoriesController < ApplicationController
  
  def api
    @category = Category.find(params[:id])
    render json: @category.to_json(include: [:categories, :markers])
  end
  
  def index
    @categories = Category.all
    @category = Category.new
  end

  def show
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    respond_to do |format|
        if @category.save!
          if @category.category_id == ""
            @category.update(category_id: nil)
          end
          format.html { redirect_to categories_path, notice: "La Categoria fue creada correctamente" }
        else
          format.html { render :new}
        end
    end
  end

  def edit
		@category = Category.find(params[:id])
    @categories = Category.all
	end

	def update
    @categories = Category.all
		@category = Category.find(params[:id])
		respond_to do |format|
      if @category.update(category_params)
        format.html { redirect_to @category, notice: "La Categoria fue actualizado correctamente" }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
		end
	end
  
  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    respond_to do |format|
      format.html { redirect_to @category, notice: "La Categoria fue eliminado correctamente" }
    end
  end

  private

  def category_params
    params.require(:category).permit(:name, :status, :category_id)
  end

end
