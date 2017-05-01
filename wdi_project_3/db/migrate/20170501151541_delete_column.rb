class DeleteColumn < ActiveRecord::Migration[5.0]
  def change
    remove_column :favorite_charities, :user_id
  end
end
