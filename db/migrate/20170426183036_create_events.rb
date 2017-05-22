class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title, null: false
      t.date :date, null: false
      t.time :start_time, null: false
      t.time :end_time
      t.text :content, null: false
      t.string :topic, null: false
      t.string :price
      t.string :type, null: false
      t.references :user, foreign_key: true, null: false

      t.timestamps
    end
  end
end
