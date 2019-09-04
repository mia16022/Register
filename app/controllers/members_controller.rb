class MembersController < ApplicationController
  
 

before_action :not_extist_member,{only:[:edit,:update,:destroy]}
 
before_action :authenticate_person,{only:[:index,:update,:edit,:destroy]}
before_action :forbid_signin_person,{only:[:signin_form,:signin]}
before_action :ensure_current_person,{only:[:edit,:update,:destroy]}
before_action :administrator_authority,{only:[:registers,:create,:index,:update,:edit,:destroy]}

def ensure_current_person
if @current_person.id != params[:id].to_i
  flash[:notice]="権限がありません"
  redirect_to("/members/index")
end
end
def not_extist_member
  @persons=Member.find_by(id:params[:id])
  if @persons.id==nil
    flash[:notice]="存在しないユーザーです"
    redirect_to("/members/index")
  end
end
  def index
  
    @persons=Member.where(hospital_code:@current_person.hospital_code)

  end
  def registers
    @person=Member.new
  end
 
def create
  @person = Member.new(
    hospital: params[:hospital],
    hospital_code: params[:hospital_code],
    him_name: params[:him_name],
    him_id: params[:him_id],
    password: params[:password]
     )
     if @person.save && @person.admin=="true"
        flash[:notice] = "登録が完了しました"
        session[:admin]=@person.admin
        session[:person_id]=@person.id
        session[:hospital]=@person.hospital
        session[:person_id]=@person.hospital_code
     redirect_to("/members/index")

     elsif @person.save
      flash[:notice] = "登録が完了しました"
      session[:person_id]=@person.id
      session[:hospital]=@person.hospital
      session[:person_id]=@person.hospital_code
   redirect_to("/members/index")

     else 
      render("members/registers")
     end
    
  end

  def destroy
    @person=Member.find_by(id: params[:id])
    @person.destroy
    redirect_to("/members/index")
    end
    
    def edit
    @person=Member.find_by(id: params[:id])
    end
    def update
      @person=Member.find_by(id: params[:id])
      @person.him_name=params[:him_name]
      @person.hospital=params[:hospital]
      @person.hospital=params[:hospital_code]
      @person.him_id=params[:him_id]
      @person.password=params[:password]

      if @person.save
        flash[:notice] = "編集が完了しました"
      redirect_to("/members/index")
      else 
      render("members/edit")
      end
      end
def signin_form

end

def signin
  @person=Member.find_by(him_id: params[:him_id],password: params[:password])

  if @person && @person.admin
    session[:admin]=@person.admin
    session[:person_id]=@person.id
    session[:hospital]=@person.hospital
    session[:hospital_id]=@person.hospital_code
    flash[:notice]="ログインしました"
    redirect_to("/cancer/top")

  elsif @person
    session[:person_id]=@person.id
    session[:hospital]=@person.hospital
    session[:hospital_id]=@person.hospital_code
    flash[:notice]="ログインしました"
    redirect_to("/cancer/top")
  else
    @error_message="ユーザーIDまたはパスワードが間違っています"
    @him_id=params[:him_id]
    @password=params[:password]
    render("/members/signin_form")
end
end
def signout
  if session[:admin]
  session[:admin]=nil
  session[:person_id]=nil
  session[:hospital_id]=nil
  session[:hospital]=nil
  flash[:notice]="ログアウトしました"
  redirect_to("/signin")
  else
    session[:person_id]=nil
    session[:hospital_id]=nil
    session[:hospital]=nil
    flash[:notice]="ログアウトしました"
    redirect_to("/signin")
end
end
end