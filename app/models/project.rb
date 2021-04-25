class Project < ApplicationRecord
    belongs_to :user
    has_many_attached :images, :dependent => :destroy

    validates :title, presence: true
    validates :description, presence: true

    validates :user, presence: true
end
