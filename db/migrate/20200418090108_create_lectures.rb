class CreateLectures < ActiveRecord::Migration[5.2]
  def change
    create_table :lectures do |t|
      t.references :subject, null: false, foreign_key: true
      t.string :title, null: false
      t.date :date, null: false

      t.timestamps
    end
  end
end
