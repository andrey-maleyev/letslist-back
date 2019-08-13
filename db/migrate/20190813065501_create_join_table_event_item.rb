class CreateJoinTableEventItem < ActiveRecord::Migration[5.2]
  def change
    create_join_table :events, :items do |t|
      # t.index [:event_id, :item_id]
      # t.index [:item_id, :event_id]
    end
  end
end
