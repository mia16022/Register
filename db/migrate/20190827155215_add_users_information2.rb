class AddUsersInformation2 < ActiveRecord::Migration[5.2]
  def change
    add_column :users,:erathera,:string
    add_column :users,:chemo_pr,:string
    add_column :users,:pr_treatday,:date
    add_column :users,:chemo_pe,:string
    add_column :users,:chemo_po,:string
    add_column :users,:po_treatday,:date
    add_column :users,:lmmuthera,:string
    add_column :users,:lmmuthera_startday,:date
    add_column :users,:radithera,:string
    add_column :users,:radithera_startday,:date
    add_column :users,:lotlesion1,:string
    add_column :users,:lotlesion2,:string
    add_column :users,:lotlesion3,:string
    add_column :users,:lotlesion4,:string
    add_column :users,:lotlesion_cir,:string
    add_column :users,:max_tumordia,:string
    add_column :users,:lym_dene,:string
    add_column :users,:surg_reachingmethod,:text
    add_column :users,:surg_type,:text
    add_column :users,:cro_1,:string
    add_column :users,:cro_2,:string
    add_column :users,:cro_3,:string
    add_column :users,:cro_4,:string
    add_column :users,:recon,:text
    add_column :users,:tissuetp_group,:text
    add_column :users,:lym_invasion,:string
    add_column :users,:veno_invasion,:string
    add_column :users,:palo_depth,:string
    add_column :users,:peri_cld,:string
    add_column :users,:no_lymnode_meta,:string
    add_column :users,:no_lymdene,:string
    add_column :users,:pathology_n,:string
    add_column :users,:gene_mascotype,:string
    add_column :users,:tp0_subgroup,:string
    add_column :users,:gene_depth,:string
    add_column :users,:sm_subgroup,:string
    add_column :users,:t4_organ1,:string
    add_column :users,:t4_organ2,:string
    add_column :users,:t4_organ3,:string
    add_column :users,:gene_n,:string
    add_column :users,:livermeta_h,:string  
    add_column :users,:perimeta_p,:string
    add_column :users,:remote_meta,:string
    add_column :users,:remote_metapart1,:string
    add_column :users,:remote_metapart2,:string
    add_column :users,:remote_metapart3,:string
    add_column :users,:remote_metapart4,:string
    add_column :users,:pro_stump,:string
    add_column :users,:dis_stump,:string
    add_column :users,:resi_tumour,:string
    add_column :users,:t,:string
    add_column :users,:n,:string
    add_column :users,:m,:string
    add_column :users,:stage,:string


  end
end
