class Student < ApplicationRecord
    has_many :ducks
    validates :name, length: { minimum: 1 }
end
