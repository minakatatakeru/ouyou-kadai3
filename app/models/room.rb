class Room < ApplicationRecord
    has_many :messages, dependent: :dsetroy
    has_many :entries, dependent: :destroy
end
