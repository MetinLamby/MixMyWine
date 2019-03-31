class RemovePriceWines < ActiveRecord::Migration[5.2]
  def change
    remove_column :wines, :price_cents
  end
end
