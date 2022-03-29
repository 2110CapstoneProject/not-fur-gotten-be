require 'rails_helper'

RSpec.describe Application, type: :model do
  it {should belong_to(:pet)}
  it {should validate_presence_of :name}
  it {should validate_presence_of :email}
  it {should validate_presence_of :description}
  it {should validate_presence_of :pet_id}
end
