class Email < ApplicationRecord
  
  validates :body, :subject, :to, presence: true
  
end
