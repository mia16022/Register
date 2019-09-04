class User < ApplicationRecord
    validates :name,{presence:true}
    validates :mw,{presence:true}
    validates :birth,{presence:true}
    validates :record_n,{presence:true}
    validates :person_id,{presence:true}


def person
    return Member.find_by(id:self.person_id)
end



end