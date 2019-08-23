class User < ApplicationRecord
    has_many :participants, dependent: :destroy
    has_many :events, through: :participants, dependent: :destroy
end
