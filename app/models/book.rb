class Book < ApplicationRecord
    mount_uploader :image, ImageUploader
    
    belongs_to :user
    belongs_to :group
    belongs_to :rental_user, optional: true, class_name: "User"
    validates :isbn, uniqueness: true
    has_one_attached :image
end