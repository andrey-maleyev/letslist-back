json.participant do
    json.id @participant.id
    json.name @participant.user.nickname
end
json.events_item do
    json.id @events_item.id
    json.name @events_item.item.name
end
json.event do
    json.id @participant.event.id
    json.name @participant.event.name
end