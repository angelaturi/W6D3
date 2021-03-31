class EditTable3 < ActiveRecord::Migration[5.2]
  def change
    remove_column :artworks, :image_url
    add_column :artworks, :image_url, :text, null: false
    add_index :artworks, :image_url, unique: true
  end
end
