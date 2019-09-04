class ApplicationController < ActionController::Base

before_action :set_current_person

before_action :set_current_member
def set_current_person
    @current_person=Member.find_by(id:session[:person_id])
  
end

def set_current_member
    @current_member=Member.find_by(admin:session[:admin])
end
def authenticate_person
    if @current_person==nil
flash[:notice]="ログインが必要です"
redirect_to("/signin")
    end
end
def forbid_signin_person
    if @current_person
        flash[:notice]="既にログインしています"
        redirect_to("/cancer/top")
    end
end
def administrator_authority
    if @current_member.admin != true
        flash[:notice]="権限がありません"
      redirect_to("/cancer/top")
    end
end
end