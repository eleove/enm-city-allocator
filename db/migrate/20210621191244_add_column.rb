# frozen_string_literal: true

class AddColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :cities, :wishes, :text
  end
end
