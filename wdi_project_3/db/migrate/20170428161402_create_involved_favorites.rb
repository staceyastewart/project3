class CreateInvolvedFavorites < ActiveRecord::Migration[5.0]
  def change
    create_table :involved_favorites do |t|
      t.string :title, null: false
      t.string :url, null: false
      t.string :tagline, null: false
      t.references :user, foreign_key: true, null: false

      t.timestamps
    end
  end
end
