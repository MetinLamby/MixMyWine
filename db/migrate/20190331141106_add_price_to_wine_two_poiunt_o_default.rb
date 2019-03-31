class AddPriceToWineTwoPoiuntODefault < ActiveRecord::Migration[5.2]
  def change
    change_column_default :wines, :price_cents, 1000
  end
end
