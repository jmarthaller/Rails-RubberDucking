class Duck < ApplicationRecord
    belongs_to :student
    validates :name, length: { minimum: 1 }
    validates :description, length: { minimum: 1 }
end
