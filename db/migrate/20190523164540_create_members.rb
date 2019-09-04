class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string :him_name
      t.string :him_id
      t.string :hospital
      t.string :password

      t.timestamps
    end
  end
end
