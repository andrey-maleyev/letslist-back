json.extract! @event, :id, :name, :is_completed
json.date @event.date.strftime('%A, %d %b %Y %l:%M %p')
json.participants @event.participants do |participant|
    json.extract! participant, :id, :is_creator, :expenses
    json.nickname participant.user.nickname
    json.avatar participant.user.avatar
end
json.items @event.items do |item|
    json.extract! item, :id, :name, :is_default
end