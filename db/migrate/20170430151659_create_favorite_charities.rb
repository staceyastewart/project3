class CreateFavoriteCharities < ActiveRecord::Migration[5.0]
  def change
    create_table :favorite_charities do |t|
      t.string :name, null: false
      t.string :city, null: false
      t.string :url, null: false
      t.references :user, foreign_key: true, null: false

      t.timestamps
    end
  end
end
