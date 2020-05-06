class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|

      t.timestamps
      t.references :user, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true
      t.references :exhibitor, index: true, foreign_key: true

    end
  end
end
