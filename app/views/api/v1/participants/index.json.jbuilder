json.participants do
    json.array! @participants do |participant|
      json.participant_id participant.id
      json.is_creator participant.is_creator
      json.event participant.event.name
      json.event_id participant.event.id
      json.date participant.event.date.strftime('%A, %d %b %Y %l:%M %p') unless participant.event.date.nil?
    end
end