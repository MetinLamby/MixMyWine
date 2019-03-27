class DosesController < ApplicationController

  def new
    @wine = Wine.find(params[:wine_id])
    @dose = Dose.new
  end

  def create
    @array = []
    dose_params.each do |new_dose_param|
      @dose = Dose.new(:ingredient_id => new_dose_param)
      @wine = Wine.find(params[:wine_id])
      @dose.wine = @wine
      @array << @dose
    end
    @array.each { |x| x.save}
    if @array[0].save

      redirect_to wine_path(@array[0].wine)
    else
      render "wines/show"
    end
  end

  private

  def dose_params
    params["dose"]["ingredient_id"][1..-1].each do |i|
      x = params.require(:dose).permit(i)
    end
  end
end
