class AddForeignKeystoWine < ActiveRecord::Migration[5.2]
  def change
    add_reference :wines, :winetype, index: true
    add_foreign_key :wines, :winetypes
  end
end
