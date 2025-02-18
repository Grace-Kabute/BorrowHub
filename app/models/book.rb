class Book < ApplicationRecord
    # Validations
    validates :title, presence: true
    validates :author, presence: true
    validates :isbn, presence: true, uniqueness: true
    validates :cover_image, presence: true
    validates :genre, presence: true
    validates :description, presence: true
    
    after_initialize :set_default_availability, if: :new_record?
  
    private
    
    def set_default_availability
      self.available ||= true
    end
  end  