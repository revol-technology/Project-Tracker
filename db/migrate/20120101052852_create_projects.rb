class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :client
      t.integer :cost

      t.date :starting_date
      t.date :ending_date

      t.timestamps
    end
  end
end
