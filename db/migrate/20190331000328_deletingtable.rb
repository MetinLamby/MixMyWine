class Deletingtable < ActiveRecord::Migration[5.2]
  def change
    remove_column :wines, :winetype_id
  end
end
