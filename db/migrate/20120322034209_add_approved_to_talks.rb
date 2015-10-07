class AddApprovedToTalks < ActiveRecord::Migration
  def change
    add_column :talks, :approved, :boolean, default: false
  end
end
