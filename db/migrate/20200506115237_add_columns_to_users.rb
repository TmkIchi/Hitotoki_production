class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :last_name, :string
    add_column :users, :first_name, :string
    add_column :users, :phone, :string
    add_column :users, :last_name_kana, :string
    add_column :users, :first_name_kana, :string
    add_column :users, :birth_year, :string
    add_column :users, :birth_month, :string
    add_column :users, :birth_day, :string
    add_column :users, :gender, :string
    add_column :users, :postal_code, :string
    add_column :users, :prefecture, :string
    add_column :users, :city_address, :string
    add_column :users, :building_name, :string
    add_column :users, :deleted_at, :string
  end
end
