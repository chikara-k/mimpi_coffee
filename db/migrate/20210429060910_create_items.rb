class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :genre_id
      t.string :name, null: false
      t.string :image_id, null: false
      t.integer :taste_bitter, default: 0
      t.integer :taste_sour, default: 0
      t.integer :taste_aroma, default: 0
      t.integer :taste_body, default: 0
      t.text :introduction, null: false
      t.integer :price, null: false
      t.boolean :is_active, null: false, default: "true"
      
      t.timestamps
    end
  end
end
