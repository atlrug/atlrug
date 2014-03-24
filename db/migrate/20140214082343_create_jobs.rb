class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.text :requirement
      t.string :name
      t.string :email
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
