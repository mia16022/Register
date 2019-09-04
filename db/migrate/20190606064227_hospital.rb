class Hospital < ActiveRecord::Migration[5.2]
  def change
    add_column :users,:hospital_id,:integer
    add_column :members,:hospital_code,:integer

  end
end
