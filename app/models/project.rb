class Project < ApplicationRecord
    belongs_to :user
    has_many_attached :images, service: :amazon, :dependent => :destroy
    has_rich_text :description
    
    validates :title, presence: true
    validates :description, presence: true
    validates :user, presence: true
    validate :image_type



    def thumbnail input
        return self.images[input].variant(resize: '300x300!').processed
    end
    
    private
        
        def image_type
            if images.attached? == false
                errors.add(:images, "are missing!")
            end

            images.each do |image|
                if !image.content_type.in?(%('image/jpeg image/png'))
                    errors.add(:images, 'needs to be a JPEG or PNG')
                end
            end
        end
    
end
