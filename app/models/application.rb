class Application < ApplicationRecord
  belongs_to :pet
  validates_presence_of :name
  validates_presence_of :email
  validates_presence_of :description
  validates_presence_of :pet_id
end
