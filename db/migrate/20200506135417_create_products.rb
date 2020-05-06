class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.timestamps
      t.string :product_url
      t.string :product_name
      t.string :description
      t.string :distributor
      t.integer :sku
      t.integer :variation_amount
      t.references :exhibitor, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true
      t.references :tag, index: true, foreign_key: true
      t.references :product_image, index: true, foreign_key: true
      t.references :variation, index: true, foreign_key:true
    end
  end
end