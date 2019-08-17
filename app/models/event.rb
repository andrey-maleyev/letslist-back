class Event < ApplicationRecord
    has_many :participants
    has_and_belongs_to_many :items
end
