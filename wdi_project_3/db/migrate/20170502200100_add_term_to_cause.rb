class AddTermToCause < ActiveRecord::Migration[5.0]
  def change
    add_column :causes, :term, :string
  end
end
