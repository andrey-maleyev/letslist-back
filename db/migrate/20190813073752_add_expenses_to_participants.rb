class AddExpensesToParticipants < ActiveRecord::Migration[5.2]
  def change
    add_column :participants, :expenses, :integer
  end
end
