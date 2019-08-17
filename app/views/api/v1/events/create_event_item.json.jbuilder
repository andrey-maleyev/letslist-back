json.extract! @event, :id, :name
json.items @event.items do |item|
    json.extract! item, :id, :name, :is_default
end