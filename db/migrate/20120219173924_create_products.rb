class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.references :category
      t.references :brand

      t.timestamps
    end
    add_index :products, :category_id
    add_index :products, :brand_id
  end
end
