class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :last_name
      t.string :client_number

      t.timestamps
    end
  end
end
