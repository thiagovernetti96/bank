class AddTransactionNumberToAccountTransactions < ActiveRecord::Migration[5.2]
  def change
    add_column :account_transactions, :transaction, :string
    add_column :account_transactions, :number, :string
  end
end
