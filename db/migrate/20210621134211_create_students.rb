# frozen_string_literal: true

class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :name
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
