class Response < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name,  presence: true
  validates :presence,   presence: true
  validates :email,      presence: true
end
