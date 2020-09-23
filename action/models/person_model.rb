class Person_Model < ApplicationRecord
    has_many :accounts
    has_many :check_deposits
    belongs_to :business

end 