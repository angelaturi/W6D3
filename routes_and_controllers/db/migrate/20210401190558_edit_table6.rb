class EditTable6 < ActiveRecord::Migration[5.2]
  def change
    remove_column :likes, :likeable_id
    remove_column :likes, :likeable_type
  end
end
