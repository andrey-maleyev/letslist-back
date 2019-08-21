json.event do
    json.extract! @event, :id, :name, :is_completed
    json.date @event.date.strftime('%A, %d %b %Y %l:%M %p') unless @event.date.nil?
    json.participants_count @event.participants.count
    json.creator @event.participants do |participant|
        if participant.is_creator?
            json.nickname participant.user.nickname
            json.extract! participant, :id, :expenses
            json.avatar participant.user.avatar
        end
    end
    json.guests @event.participants do |participant|
        unless participant.is_creator?
            json.nickname participant.user.nickname
            json.extract! participant, :id, :expenses
            json.avatar participant.user.avatar
        end
    end
    json.taken_items @event.events_items do |event_item|
        if event_item.is_taken?
            json.id event_item.item.id
            json.name event_item.item.name
        end
    end
    json.not_taken_items @event.events_items do |event_item|
        unless event_item.is_taken?
            json.id event_item.item.id
            json.name event_item.item.name
        end
    end
end