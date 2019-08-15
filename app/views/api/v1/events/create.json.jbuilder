json.event do
    json.extract! @event, :id, :name, :date, :is_completed
end