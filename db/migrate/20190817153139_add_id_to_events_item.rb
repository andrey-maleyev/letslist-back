class AddIdToEventsItem < ActiveRecord::Migration[5.2]
  def change
    add_column :events_items, :id, :primary_key
  end
end
