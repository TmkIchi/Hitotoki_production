class CreateDeliveraddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :deliveraddresses do |t|
      t.references :user, index: true, foreign_key: true
      t.string :last_name
      t.string :first_name
      t.string :last_name_kana
      t.string :first_name_kana
      t.integer :postal_code
      t.integer :phone
      t.timestamps
    end
  end
end
