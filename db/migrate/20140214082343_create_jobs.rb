class CreateJobs < ActiveRecord::Migration[4.2]
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.text :requirement
      t.string :name
      t.string :email
      t.date :start_date
      t.date :end_date

      t.timestamps null: false
    end
  end
end
