class AddUsersInformation1 < ActiveRecord::Migration[5.2]
  def change
    add_column :users,:register_year,:string
    add_column :users,:linking_no,:text
    add_column :users,:register_hp,:string
    add_column :users,:clinical_dp,:string
    add_column :users,:id_no,:text
    add_column :users,:treat_startday,:numeric
    add_column :users,:surg_date,:numeric
    add_column :users,:surg_age,:string
    add_column :users,:life_and_death,:string
    add_column :users,:cause_of_death,:string
    add_column :users,:recu,:string
    add_column :users,:recu_type,:string
    add_column :users,:recu_date,:numeric
    add_column :users,:recu_registers,:string
    add_column :users,:last_survdate,:numeric
    add_column :users,:surv_date,:string
    add_column :users,:surv_days,:string
    add_column :users,:surv_month_year,:string
    add_column :users,:outcome_age,:string
    add_column :users,:disease,:string
    add_column :users,:stomach,:string
    add_column :users,:ft_grt_lesion,:string
    add_column :users,:ft_grt_period,:string
    add_column :users,:residual_gascan,:string
    add_column :users,:non_eptumor,:string
    add_column :users,:other_malitumor,:string
  end  
end