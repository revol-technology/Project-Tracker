class AddProjectIdToTeam < ActiveRecord::Migration
  def change
    add_column :teams, :project_id, :integer
  end
end
