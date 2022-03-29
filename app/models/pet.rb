class Pet < ApplicationRecord
  has_many :applications
  validates_presence_of :name
  validates_presence_of :age
  validates_presence_of :description
  validates_presence_of :species
  validates_presence_of :gender
  validates_presence_of :owner_email
  validates_presence_of :owner_name
end
