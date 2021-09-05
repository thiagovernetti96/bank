class Client < ApplicationRecord
    validates :name, presence: true
    validates :last_name, presence: true
    validates :client_number, presence: true, uniqueness: true

    has_many :bank_accounts

    before_save :format_name

    def format_name
        self.name = self.name.upcase
        self.last_name = self.last_name.upcase
    end

    def num_accounts
        self.bank_accounts.count
    end

    def to_s
        "#{name} #{last_name}"
    end

end
