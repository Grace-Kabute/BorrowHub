class Profile < ApplicationRecord
  belongs_to :user
  has_many :borrowings
  
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :library_code, presence: true, uniqueness: true
end
