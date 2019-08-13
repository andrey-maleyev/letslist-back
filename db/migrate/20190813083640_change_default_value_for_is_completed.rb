class ChangeDefaultValueForIsCompleted < ActiveRecord::Migration[5.2]
  def change
    change_column :events, :is_completed, :boolean, default: false
  end
end
