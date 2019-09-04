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
    name: params[:name],
    mw: params[:mw],
    birth: params[:birth],
    record_n: params[:record_n],
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










