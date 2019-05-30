class AddCityToPersonals < ActiveRecord::Migration[5.2]
  def change
    add_column :personals, :prefecture_id, :integer, null: false
    add_column :personals, :city, :string, null: false
    add_column :personals, :address, :string, null: false
  end
end
