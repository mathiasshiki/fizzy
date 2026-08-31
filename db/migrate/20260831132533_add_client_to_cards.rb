class AddClientToCards < ActiveRecord::Migration[8.2]
  def change
    add_column :cards, :client, :string
  end
end
