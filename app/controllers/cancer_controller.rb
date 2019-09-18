class CancerController < ApplicationController

  PER=8
  before_action :authenticate_person
  before_action :not_extist_cancer,{only:[:edit,:update,:destroy]}
 before_action :ensure_current_cancer,{only:[:edit,:update,:destroy]}
 before_action :administrator_authority,{only:[:registers,:create]}
 
def not_extist_cancer
  @user=User.find_by(id:params[:id])
  if @user==nil
    flash[:notice]="存在しない患者です"
    redirect_to("/cancer/top")
  end
end

  def ensure_current_cancer
   @user=User.find_by(id:params[:id])
    if @current_person.hospital_code != @user.hospital_id || @current_member.admin != true
      flash[:notice]="権限がありません"
      redirect_to("/cancer/top")

   

    end
  end
  def top
    @users=User.where(hospital_id:@current_person.hospital_code).page(params[:page]).per(PER)
   
  end
  def registers
    @user = User.new
  end
  def create   
     @user = User.new(

    register_year: params[:register_year],
    record_n: params[:record_n],
    linking_no: params[:linking_no],
    register_hp: params[:register_hp],
    clinical_dp: params[:clinical_dp],
    name: params[:name],
    mw: params[:mw],
    id_no: params[:id_no],
    birth: params[:birth],
    treat_startday: params[:treat_startday],
    surg_date: params[:surg_date],
    surg_age: params[:surg_age],
    recu_registers: params[:recu_registers],
    life_and_death: params[:life_and_death],
    cause_of_death: params[:cause_of_death],
    recu: params[:recu],
    recu_type: params[:recu_type],
    recu_date: params[:recu_date],
    last_survdate: params[:last_survdate],
    surv_date: params[:surv_date],
    surv_days: params[:surv_days],
    surv_month_year: params[:surv_month_year],
    outcome_age: params[:outcome_age],
    disease: params[:disease],
    stomach_cancers: params[:stomach_cancers],
    non_eptumor: params[:non_eptumor],
    other_malitumor: params[:other_malitumor],
    ft_grt_lesion: params[:ft_grt_lesion],
    ft_grt_period: params[:ft_grt_period],
    residual_gascan: params[:residual_gascan],
    erathera: params[:erathera],
    chemo_pr: params[:chemo_pr],
    pr_treatday: params[:pr_treatday],
    chemo_pe: params[:chemo_pe],
    chemo_po: params[:chemo_po],
    po_treatday: params[:po_treatday],
    lmmuthera: params[:lmmuthera],
    lmmuthera_startday: params[:lmmuthera_startday],
    radithera: params[:radithera],
    radithera_startday: params[:radithera_startday],
    lotlesion1: params[:lotlesion1],
    lotlesion2: params[:lotlesion2],
    lotlesion3: params[:lotlesion3],
    lotlesion_cir: params[:lotlesion_cir],
    max_tumordia: params[:max_tumordia],
    lym_dene: params[:lym_dene],
    surg_reachingmethod: params[:surg_reachingmethod],
    surg_type: params[:surg_type],
    cro_1: params[:cro_1],
    cro_2: params[:cro_2],
    cro_3: params[:cro_3],
    cro_4: params[:cro_4],
    recon: params[:recon],
    tissuetp_group: params[:tissuetp_group],
    lym_invasion: params[:lym_invasion],
    veno_invasion: params[:veno_invasion],
    palo_depth: params[:palo_depth],
    peri_cld: params[:peri_cld],
    no_lymnode_meta: params[:no_lymnode_meta],
    no_lymdene: params[:no_lymdene],
    pathology_n: params[:pathology_n],
    gene_mascotype: params[:gene_mascotype],
    tp0_subgroup: params[:tp0_subgroup],
    gene_depth: params[:gene_depth],
    sm_subgroup: params[:sm_subgroup],
    t4_organ1: params[:t4_organ1],
    t4_organ2: params[:t4_organ2],
    t4_organ3: params[:t4_organ3],
    gene_n: params[:gene_n],
    livermeta_h: params[:livermeta_h],
    perimeta_p: params[:perimeta_p],
    remote_meta: params[:remote_meta],
    remote_metapart1: params[:remote_metapart1],
    remote_metapart2: params[:remote_metapart2],
    remote_metapart3: params[:remote_metapart3],
    remote_metapart4: params[:remote_metapart4],
    pro_stump: params[:pro_stump],
    dis_stump: params[:dis_stump],
    resi_tumour: params[:resi_tumour],
    t: params[:t],
    n: params[:n],
    m: params[:m],
    stage: params[:stage],
    person_id:  @current_person.id,
    hospital_id: @current_person.hospital_code
     )
     if @user.save
        flash[:notice] = "登録が完了しました"
     redirect_to("/cancer/top")
     else 
      render("cancer/registers")
     end
    
  end
def destroy
@user=User.find_by(id: params[:id])
@user.destroy
redirect_to("/cancer/top")
end

def edit
@user=User.find_by(id: params[:id])
@person=Member.find_by(id:@user.person_id)
end
def update
@user=User.find_by(id: params[:id])
@user.name=params[:name]
@user.mw=params[:mw]
@user.birth=params[:birth]
@user.record_n=params[:record_n]
@user.person_id=@current_person.id
@user.hospital_id=@current_person.hospital_code
if @user.save
  flash[:notice] = "編集が完了しました"
redirect_to("/cancer/top")
else 
render("cancer/edit")
end
end
end










