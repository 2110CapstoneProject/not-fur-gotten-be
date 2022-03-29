require 'rails_helper'

RSpec.describe Pet, type: :model do
  it {should have_many(:applications)}

end
