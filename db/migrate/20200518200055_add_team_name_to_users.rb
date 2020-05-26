class AddTeamNameToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :team_name, :string
  end
end
