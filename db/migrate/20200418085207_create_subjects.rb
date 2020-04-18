class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      t.string :title, null: false
      t.string :weekday, null: false
      t.integer :period, null: false

      t.timestamps

      t.index [:title, :weekday, :period], unique: true
    end
  end
end
