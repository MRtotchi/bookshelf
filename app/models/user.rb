class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :timeoutable
  
  has_many :books
  has_many :rental_books, class_name: "Book", foreign_key: :rental_user_id
  belongs_to :group
  
  
end
