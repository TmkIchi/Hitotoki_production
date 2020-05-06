class AddColumnsToExhibitors < ActiveRecord::Migration[5.2]
  def change
    add_column :exhibitors, :last_name, :string
    add_column :exhibitors, :first_name, :string
    add_column :exhibitors, :phone, :integer
    add_column :exhibitors, :last_name_kana, :string
    add_column :exhibitors, :first_name_kana, :string
    add_column :exhibitors, :company_name, :string
    add_column :exhibitors, :representative_name, :string
    add_column :exhibitors, :postal_code, :integer
    add_column :exhibitors, :prefecture, :string
    add_column :exhibitors, :city_address, :string
    add_column :exhibitors, :building_name, :string
    add_column :exhibitors, :deleted_at, :datetime
  end
end
