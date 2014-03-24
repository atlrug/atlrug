class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.string :name
      t.string :email
      t.text :personal_info
      t.text :career_objective
      t.text :work_experience
      t.text :education
      t.text :skill
      t.text :hoppy

      t.timestamps
    end
  end
end
