class AddPerson < ActiveRecord::Migration[5.2]
  def change

    add_column :users,:person_id,:integer

  end
end
