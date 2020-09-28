class Account < ApplicationRecord 

    validates :user, presence: true
    validates :account_number, presence: true, uniqueness: true
    validates :balance, presence: true, numericality: true

    has_many :check_deposits
    belongs_to :person
    belongs_to :business, :through => :person

  def update_balance(transaction)
        case transaction.status
        when "sent"
            self.current_balance + transaction.amount
        when "submitted"
            while transaction.status !== "sent" || transaction.status !== "pending"
                self.current_balance 
            end 
        when "pending"
            until transaction.status == "sent" || transaction.status == "submitted" do
                self.current_balance
            end 
        when "error"
            self.error
        when 

end 