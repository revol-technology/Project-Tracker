class AddPersonIdToTeam < ActiveRecord::Migration
  def change
    add_column :teams, :person_id, :integer
  end
end
