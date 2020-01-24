class Review < ApplicationRecord
    scope :sort_name, -> { order(name: :asc) }
    belongs_to :product

    validates :author, presence: true
    validates :rating, presence: true
    validates :content_body, presence: true
    validates_numericality_of :rating, only_integer: true
    validates_numericality_of :rating, less_than_or_equal_to: 5

end