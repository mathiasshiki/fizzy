class AddDeadlineToCards < ActiveRecord::Migration[8.2]
  def change
    add_column :cards, :deadline, :string
  end
end
