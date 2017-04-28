class RenameColumn < ActiveRecord::Migration[5.0]
  def change
    rename_column :events, :type, :type_of_event
  end
end
