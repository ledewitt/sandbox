module Json
  class Employee < ActiveRecord::Base
    
    validates_presence_of :first_name,
                          :last_name,
                          :department,
                          :job
                          
    attr_accessible :first_name,
                    :last_name,
                    :department,
                    :job
  end
end