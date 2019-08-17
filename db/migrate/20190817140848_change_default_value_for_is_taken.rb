class ChangeDefaultValueForIsTaken < ActiveRecord::Migration[5.2]
  def change
    change_column :events_items, :is_taken, :boolean, default: false
  end
end
