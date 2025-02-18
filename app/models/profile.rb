class Profile < ApplicationRecord
  belongs_to :user

  
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :library_code, presence: true, uniqueness: true
end
