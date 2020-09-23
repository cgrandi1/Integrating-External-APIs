class Check_Deposit_Model < ApplicationRecord
    belongs_to :accounts
    belongs_to :persons
end
