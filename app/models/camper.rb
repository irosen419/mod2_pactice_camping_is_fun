class Camper < ApplicationRecord
    has_many :signups
    has_many :activities, through: :signups
    validates :name, uniqueness: true
    validates :age, inclusion: 8..18

    def name_plus_age
        "#{self.name} --- #{self.age}"
    end
end
