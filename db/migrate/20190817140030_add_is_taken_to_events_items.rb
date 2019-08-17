class AddIsTakenToEventsItems < ActiveRecord::Migration[5.2]
  def change
    add_column :events_items, :is_taken, :boolean
  end
end
