class RenameCalColumn < ActiveRecord::Migration[5.0]
  def change
    rename_column :calendars, :start_date, :start
  end
end
