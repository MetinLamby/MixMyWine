class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
  end





  # def new
  #   @wine = Wine.find(params[:wine_id])
  #   @ingredient = Ingredient.new
  # end

  # def create
  #   @ingredient = Ingredient.new(ingredient_params)
  #   @wine = Wine.find(params[:wine_id])
  #   @ingredient.wine = @wine
  #   if @ingredient.save
  #     redirect_to wine_path(@ingredient.wine)
  #   else
  #     render "wine/show"
  #   end
  # end

  # def ingredient_params
  #   params.require(:ingredient).permit(:name, :id)
  # end

end
