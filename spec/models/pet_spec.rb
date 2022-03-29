require 'rails_helper'

RSpec.describe Pet, type: :model do
  it {should have_many(:applications)}

  it {should validate_presence_of :name}
  it {should validate_presence_of :age}
  it {should validate_presence_of :description}
  it {should validate_presence_of :species}
  it {should validate_presence_of :gender}
  it {should validate_presence_of :owner_email}
  it {should validate_presence_of :owner_name}
end
