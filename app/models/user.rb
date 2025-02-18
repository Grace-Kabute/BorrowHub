class User < ApplicationRecord
  has_secure_password
  has_many :sessions, dependent: :destroy

  normalizes :email_address, with: ->(e) { e.strip.downcase }
  
  has_one :profile, dependent: :destroy

  after_create :create_profile

  private

  def create_profile
    Profile.create!(user: self, library_code: generate_library_code)
  end  

  def generate_library_code
    "LIB#{SecureRandom.hex(4).upcase}"
  end
end
