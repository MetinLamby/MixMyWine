class RemovePriceFromWines < ActiveRecord::Migration[5.2]
  def change
    remove_column :wines, :price
  end
end
