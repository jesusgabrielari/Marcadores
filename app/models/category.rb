class Category < ApplicationRecord
    enum status: [:publico, :privado]
    has_many :markers
    has_many :categories, dependent: :destroy
    belongs_to :category, optional: true
    validates :name, :status, presence: true
    # accepts_nested_attributes_for :markers, reject_if: :all_blank
end
