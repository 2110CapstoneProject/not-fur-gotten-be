require 'rails_helper'

RSpec.describe Types::QueryType do
  describe 'display a pet' do
    it 'can query a single pet' do
      pet_1 = Pet.create!(id: 1, name: "Clifford", gender: "M", age: 2, description: "Big Red Dog, likes kids", species: "dog", owner_story: "My owner is going into assisted living next month and he is worried about what will happen to me", owner_email: "old_dude@gmail.com", owner_name: "Virgil")
      pet_2 = Pet.create!(id: 2, name: "Garfield", gender: "M", age: 6, description: "Fat orange cat", species: "cat", owner_story: "My owner is going into assisted living next month and he is worried about what will happen to me", owner_email: "old_dude@gmail.com", owner_name: "Virgil")
      pet_3 = Pet.create!(id: 3, name: "Nermal", gender: "F", age: 3, description: "Gray Tabby", species: "cat", owner_story: "My owner is terminally ill with cancer and only has about 6 months to find me a home", owner_email: "lady@gmail.com", owner_name: "Ethel")

      result = NotFurgottenSchema.execute(query).as_json

      expect(result["data"]["getPetById"]["name"]).to eq("Clifford")
      expect(result["data"]["getPetById"]["gender"]).to eq("M")
      expect(result["data"]["getPetById"]["age"]).to eq(2)
      expect(result["data"]["getPetById"]["description"]).to eq("Big Red Dog, likes kids")
      expect(result["data"]["getPetById"]["species"]).to eq("dog")
      expect(result["data"]["getPetById"]["ownerStory"]).to eq("#{pet_1.owner_story}")
      expect(result["data"]["getPetById"]["ownerEmail"]).to eq("#{pet_1.owner_email}")
      expect(result["data"]["getPetById"]["ownerName"]).to eq("#{pet_1.owner_name}")

      expect(result["data"]["getPetById"]["name"]).to_not eq("Garfield")
      expect(result["data"]["getPetById"]["name"]).to_not eq("Nermal")
    end

    def query
       <<~GQL
       {
          getPetById(id: "1") {
           name
           gender
           age
           description
           species
           ownerStory
           ownerName
           ownerEmail
           }
       }
       GQL
    end
  end
end
