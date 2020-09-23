class Account < ApplicationRecord 
    has_many :check_deposits
    belongs_to :person
    belongs_to :business, :through => :person
end 