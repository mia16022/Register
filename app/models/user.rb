class User < ApplicationRecord

    validates :person_id,{presence:true}
    validates :register_year,{presence:true}
    validates :record_n,{presence:true}
    validates :linking_no,{presence:true}
    validates :register_hp,{presence:true}
    validates :clinical_dp,{presence:true}
    validates :name,{presence:true}
    validates :mw,{presence:true}
    validates :id_no,{presence:true}
    validates :birth,{presence:true}
    validates :treat_startday,{presence:true}
    validates :surg_date,{presence:true}
    validates :surg_age,{presence:true}
    validates :recu_registers,{presence:true}
    validates :life_and_death,{presence:true}
    validates :cause_of_death,{presence:true}
    validates :recu,{presence:true}
    validates :recu_type,{presence:true}
    validates :recu_date,{presence:true}
    validates :last_survdate,{presence:true}
    validates :surv_date,{presence:true}
    validates :surv_days,{presence:true}
    validates :surv_month_year,{presence:true}
    validates :outcome_age,{presence:true}
    validates :disease,{presence:true}
    validates :stomach_cancers,{presence:true}
    validates :non_eptumor,{presence:true}
    validates :other_malitumor,{presence:true}
    validates :ft_grt_lesion,{presence:true}
    validates :ft_grt_period,{presence:true}
    validates :residual_gascan,{presence:true}
    validates :erathera,{presence:true}
    validates :chemo_pr,{presence:true}
    validates :pr_treatday,{presence:true}
    validates :chemo_pe,{presence:true}
    validates :chemo_po,{presence:true}
    validates :po_treatday,{presence:true}
    validates :lmmuthera,{presence:true}
    validates :lmmuthera_startday,{presence:true}
    validates :radithera,{presence:true}
    validates :radithera_startday,{presence:true}

def person
    return Member.find_by(id:self.person_id)
end



end