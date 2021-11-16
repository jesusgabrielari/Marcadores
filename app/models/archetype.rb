class Archetype < ApplicationRecord
    has_many :markers
    validates :name, presence: true
    # accepts_nested_attributes_for :markers, reject_if: :all_blank
end
