class AddEmailTwitterAndDescriptionToTalks < ActiveRecord::Migration
  def change
    add_column :talks, :email, :string
    add_column :talks, :twitter, :string
    add_column :talks, :description, :text
  end
end
