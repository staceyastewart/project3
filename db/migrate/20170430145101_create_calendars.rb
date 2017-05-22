class CreateCalendars < ActiveRecord::Migration[5.0]
  def change
    create_table :calendars do |t|
      t.string :title
      t.datetime :start_date
      t.datetime :start_time
      t.datetime :end_time
      t.text :content
      t.string :topic
      t.integer :price
      t.string :type_of_event
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
