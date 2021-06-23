class ChangeRankColumnToForbidNullValues < ActiveRecord::Migration[6.1]
  def change
  	change_column :choices, :rank, :integer, null: false
  end
end
