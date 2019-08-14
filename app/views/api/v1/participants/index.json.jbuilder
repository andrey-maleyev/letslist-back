json.participants do
    json.array! @participants do |participant|
      json.extract! participant, :id, :is_creator
      json.event participant.event.name
      json.date participant.event.date
    end
end