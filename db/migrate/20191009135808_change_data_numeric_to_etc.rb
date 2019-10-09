class ChangeDataNumericToEtc < ActiveRecord::Migration[5.2]
  def change


change_column :users,:treat_startday,:date
change_column :users,:surg_date,:date
change_column :users,:last_survdate,:date
change_column :users,:recu_date,:date
  end
end
