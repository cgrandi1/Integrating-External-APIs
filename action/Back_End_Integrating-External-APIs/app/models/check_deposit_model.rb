class CheckDepositModel < ApplicationRecord
    belongs_to :account
    belongs_to :person

    validates :account, presence: true
    validates :amount, presence: true, numericality: true
    validates_inclusion_of :status, :in => ['submitted', 'pending', 'returned', 'sent', 'error']
    validates :id, presence: true, uniqueness: true

    before_validation :load_defaults

    def load_defaults
        if self.created_at?
          self.id = SecureRandom.uuid
        end
      end

    


    end 

    
end
