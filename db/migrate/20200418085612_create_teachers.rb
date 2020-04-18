class CreateTeachers < ActiveRecord::Migration[6.0]
  def change
    create_table :teachers do |t|
      t.references :subject, null: false, foreign_key: true
      t.string :name, null: false

      t.timestamps
    end
  end
end
