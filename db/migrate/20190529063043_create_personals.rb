class CreatePersonals < ActiveRecord::Migration[5.2]
  def change
    create_table :personals do |t|
      t.string :name, null: false
      t.string :kana_name, null: false
      t.integer :postal_code, null: false
      t.integer :birth_day, null: false
      t.integer :phone_number, unique: true
      t.references :user,null: false, foreign_key: true
      t.timestamps
    end
  end
end
