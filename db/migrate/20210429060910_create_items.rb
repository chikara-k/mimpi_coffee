class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :genre_id
      t.string :name, null: false
      t.string :image_id
      t.integer :taste_bitter, null: false, default: 0
      t.integer :taste_sour, null: false, default: 0
      t.integer :taste_aroma, null: false, default: 0
      t.integer :taste_body, null: false, default: 0
      t.text :introduction
      t.integer :price, null: false
      t.boolean :is_active, null: false, default: "true"
      
      t.timestamps
    end
  end
end
