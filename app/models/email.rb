class Email < ApplicationRecord
  
  validates :body, :subject, :recipient, presence: true
  
end
