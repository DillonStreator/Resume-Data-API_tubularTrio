class CreateEducations < ActiveRecord::Migration[5.0]
  def change
    create_table :educations do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.string :degree
      t.string :university_name
      t.string :details
      t.integer :student_id

      t.timestamps
    end
  end
end
