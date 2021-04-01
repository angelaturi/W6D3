class EditTable5 < ActiveRecord::Migration[5.2]
  def change
    remove_column :artwork_shares, :artwork_id
    add_column :artwork_shares, :artwork_id, :integer, null: false
    add_index :artwork_shares, :artwork_id
  end
end
