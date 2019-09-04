class Member < ApplicationRecord
    validates :him_name,{presence:true}
    validates :him_id,{presence:true,uniqueness:true}
    validates :hospital,{presence:true}
    validates :password,{presence:true}

    def administrator
        return User.where(person_id:self.id)
    end
 
end
