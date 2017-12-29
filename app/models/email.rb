class Email < ApplicationRecord
  
  validates :body, :recipient, presence: true
  
end
