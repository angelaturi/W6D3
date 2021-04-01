class CreateLlikes < ActiveRecord::Migration[5.2]
  def change
    create_table :llikes do |t|
      t.integer :user_id
      t.references :likeable, polymorphic: true, index: true
      t.timestamps
    end

    add_index :llikes, [:user_id, :likeable_type, :likeable_id], unique: true
  end
end
