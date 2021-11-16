class Marker < ApplicationRecord
    belongs_to :category, dependent: :destroy
    belongs_to :archetype, dependent: :destroy
    validates :name, presence: true
end
