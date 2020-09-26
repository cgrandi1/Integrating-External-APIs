class CheckDepositModel < ApplicationRecord
    belongs_to :accounts
    belongs_to :person

    validates :bank_account, presence: true
    validates :amount, presence: true, numericality: true
    validates :transaction_type, presence: true, inclusion: { in: @checking_deposit.status }
    validates :transaction_number, presence: true, uniqueness: true

    before_validation :load_defaults

    def load_defaults
        if self.created_at?
          self.id = SecureRandom.uuid
        end
      end

    def update_balance(deposit)
        if deposit.status = "sent"
            @account.current_balance = @account.current_balance + deposit.amount
            self.save 
        elsif deposit.status = "pending"
            @account.current_balance
        elsif desposit.status = "returned"
            let not_sent = @account.current_balance 
    end 

    
end
