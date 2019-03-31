class Deletingtablenow < ActiveRecord::Migration[5.2]
  def change
    drop_table :winetypes
  end
end
