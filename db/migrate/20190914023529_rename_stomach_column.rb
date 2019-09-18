class RenameStomachColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :stomach, :stomach_cancers

  end
end
