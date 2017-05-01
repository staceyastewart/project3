class RenameColumnFavChar < ActiveRecord::Migration[5.0]
  def change
    rename_column :favorite_charities, :use_id, :user_id
  end
end
