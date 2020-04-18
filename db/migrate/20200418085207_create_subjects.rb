class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      t.string :title, null: false
      t.string :weekday, null: false
      t.integer :period, null: false

      t.timestamps
    end
  end
end
