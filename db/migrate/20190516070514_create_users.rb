class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :mw
      t.string :birth
      t.string :record_n

      t.timestamps
    end
  end
end
