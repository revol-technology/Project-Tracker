class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :address
      t.integer :phone_no
      t.string :email
      t.string :speciality

      t.timestamps
    end
  end
end
