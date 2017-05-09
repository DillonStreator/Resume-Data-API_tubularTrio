class CreateStudentSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :student_skills do |t|
      t.integer :skill_id
      t.integer :student_id

      t.timestamps
    end
  end
end
