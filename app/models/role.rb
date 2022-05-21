class Role < ActiveRecord::Base
    has_many :auditions 

    def auditions 
        Audition.where(role_id: self.id)
    end 

    def actors 
        self.auditions.map{|audition| audition.actor}
    end 

    def locations 
        self.auditions.map{|audition| audition.location}
    end 

    def lead 
        lead_actor = Audition.find_by(role_id: self.id, hired: true) 
        
        if lead_actor
            lead_actor 
        else 
            puts 'no actor has been hired for this role'
        end 
    end 

    def understudy 
        understudy_actor = Audition.where(role_id: self.id, hired: true)[1]
        
        if understudy_actor
            understudy_actor
        else 
            puts 'no understudy has been hired for this role'
        end 
    end 
  end