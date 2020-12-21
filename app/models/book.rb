class Book < ApplicationRecord
    mount_uploader :image, ImageUploader
    
    belongs_to :user
    belongs_to :group
    
    validates :isbn, uniqueness: true
end