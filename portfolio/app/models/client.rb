class Client < ApplicationRecord
  validates :name, :email, :subject, :message, presence: true
  
end
