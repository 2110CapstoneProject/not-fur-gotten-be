require 'rails_helper'

RSpec.describe Types::QueryType do
  describe 'display all pets' do
    it 'can query all the pets' do
      pet_1 = Pet.create!(name: "Clifford", gender: "M", age: 2, description: "Big Red Dog, likes kids", species: "dog", owner_story: "My owner is going into assisted living next month and he is worried about what will happen to me", owner_email: "old_dude@gmail.com", owner_name: "Virgil")
      pet_2 = Pet.create!(name: "Garfield", gender: "M", age: 6, description: "Fat orange cat", species: "cat", owner_story: "My owner is going into assisted living next month and he is worried about what will happen to me", owner_email: "old_dude@gmail.com", owner_name: "Virgil")
      pet_3 = Pet.create!(name: "Nermal", gender: "F", age: 3, description: "Gray Tabby", species: "cat", owner_story: "My owner is terminally ill with cancer and only has about 6 months to find me a home", owner_email: "lady@gmail.com", owner_name: "Ethel")

      result = NotFurgottenSchema.execute(query).as_json

      expect(result["data"]["getAllPets"].count).to eq(3)
      expect(result["data"]["getAllPets"].first["name"]).to eq("Clifford")
      expect(result["data"]["getAllPets"].last["name"]).to eq("Nermal")

      pets = Pet.all
      expect(result.dig("data", "getAllPets")).to match_array(pets.map {|pet| {"name" => pet.name, "gender" => pet.gender, "age" => pet.age, "description" => pet.description, "species" => pet.species, "ownerStory" => pet.owner_story, "ownerEmail" => pet.owner_email, "ownerName" => pet.owner_name } })
    end
  end

  def query
     <<~GQL
     {
        getAllPets {
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
