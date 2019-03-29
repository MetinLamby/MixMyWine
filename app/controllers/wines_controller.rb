class WinesController < ApplicationController

  # authorize @wine

  def index
    # if params[:query].present?
    #   sql_query = " \
    #     wines.name ILIKE :query \
    #     OR ingredients.name ILIKE :query \
    #   "
    #   @wines = Wine.joins(:ingredients).where(sql_query, query: "%#{params[:query]}%")
    # else
    #   @wines = Wine.all
    # end
    # @ingredients = Ingredient.all
    # @wines = Wine.all
    @selectedingredients = Ingredient.where(id: params[:ingredients])
    @selcetedwines = Wine.with_ingredients(@selectedingredients).uniq
  end

  def show
    @wine = Wine.find(params[:id])
    @dose = Dose.new
  end


  def new
    @wine = Wine.new
  end

  def create
    @wine = Wine.new(wine_params)
    if @wine.save
      redirect_to @wine
    else
      render :new
    end
  end

  private

  def wine_params
   params.require(:wine).permit(:name)
  end
end




