json.event do
    json.id @event.id
    json.name @event.name
    json.is_completed @event.is_completed
    json.date @event.date.strftime('%A, %d %b %Y %l:%M %p') unless @event.date.nil?
    json.participants_count @event.participants.count
    json.expenses @event.participants do |participant|
        json.user_id participant.user.id
        json.participant_id participant.id
        json.expenses participant.expenses
    end
    json.creator @event.participants do |participant|
        if participant.is_creator?
            json.nickname participant.user.nickname
            json.participant_id participant.id
            json.user_id participant.user.id
            json.avatar participant.user.avatar
            json.personal_list participant.events_items do |taken_item|
                json.events_item_id taken_item.id
                json.item_id taken_item.item_id
                json.name taken_item.item.name
                json.is_taken taken_item.is_taken
            end
        end
    end
    json.guests @event.participants do |participant|
        unless participant.is_creator?
            json.nickname participant.user.nickname
            json.participant_id participant.id
            json.user_id participant.user.id
            json.avatar participant.user.avatar
            json.personal_list participant.events_items do |taken_item|
                json.events_item_id taken_item.id
                json.item_id taken_item.item_id
                json.name taken_item.item.name
                json.is_taken taken_item.is_taken
            end
        end
    end
    json.taken_items @event.events_items do |event_item|
        if event_item.is_taken?
            json.events_item_id event_item.id
            json.item_id event_item.item.id
            json.name event_item.item.name
        end
    end
    json.not_taken_items @event.events_items do |event_item|
        unless event_item.is_taken?
            json.events_item_id event_item.id
            json.item_id event_item.item.id
            json.name event_item.item.name
        end
    end
end