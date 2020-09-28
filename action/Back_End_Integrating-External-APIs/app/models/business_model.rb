class Business_Model < ApplicationRecord
    has_many :persons
    has_many :accounts, :through => :perons

end 
