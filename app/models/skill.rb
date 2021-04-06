class Skill < ApplicationRecord
    belongs_to :user

    validates :name, presence: true,  uniqueness: true
    validates :description, presence: true
    validates :user, presence: true
    
end
