class PersonModel < ApplicationRecord
    validates_presence_of :first_name
    validates_presence_of :last_name

    before_save :format_name

    has_many :accounts
    has_many :transactions
    belongs_to :business

    def format_name
        self.first_name = self.first_name.upcase
        self.middle_name = self.middle_name.upcase
        self.last_name = self.last_name.upcase
    end 

    def full_name
        "#{first_name}, #{last_name} #{midd_name}"
    end


end 