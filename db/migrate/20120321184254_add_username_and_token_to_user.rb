class AddUsernameAndTokenToUser < ActiveRecord::Migration[4.2]
  def change
    add_column :users, :github_login, :string
    add_column :users, :github_token, :string
  end
end
