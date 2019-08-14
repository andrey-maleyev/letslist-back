json.events do
  json.array! @events do |event|
    json.extract! event, :id, :name, :date, :is_completed
  end
end