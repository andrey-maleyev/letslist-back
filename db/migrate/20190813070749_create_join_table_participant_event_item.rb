class CreateJoinTableParticipantEventItem < ActiveRecord::Migration[5.2]
  def change
    create_join_table :participants, :events_items do |t|
      # t.index [:participant_id, :events_item_id]
      # t.index [:events_item_id, :participant_id]
    end
  end
end
