class WinesController < ApplicationController

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
    @selcetedwines = Wine.with_ingredients(@selectedingredients)
  end

  def show
     @wine = Wine.find(params[:id])
  end
end




