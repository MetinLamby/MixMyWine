class AddSkUtoWine < ActiveRecord::Migration[5.2]
  def change
    add_column :wines, :sku, :string
  end
end
