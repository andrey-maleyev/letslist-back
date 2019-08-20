json.participant do
    json.extract! @participant, :id, :user_id, :event_id, :is_creator
end