require 'rails_helper'

RSpec.describe Types::QueryType do
  describe 'display a pet' do
    it 'can query a single pet' do
      pet_1 = Pet.create!(id: 1, name: "Clifford", gender: "M", age: 2, description: "Big Red Dog, likes kids", species: "dog", owner_story: "My owner is going into assisted living next month and he is worried about what will happen to me", owner_email: "old_dude@gmail.com", owner_name: "Virgil")
      pet_2 = Pet.create!(id: 2, name: "Garfield", gender: "M", age: 6, description: "Fat orange cat", species: "cat", owner_story: "My owner is going into assisted living next month and he is worried about what will happen to me", owner_email: "old_dude@gmail.com", owner_name: "Virgil")
      application_1 = Application.create!(name: "Joe", email:"joe@yahoo.com", description: "I have a large yard and like to go for hikes", pet_id: pet_1.id )
      application_2 = Application.create!(name: "Kim", email:"kim@gmail.com", description: "I love cats and live in an apartment", pet_id: pet_2.id )

      result = NotFurgottenSchema.execute(query).as_json

      expect(result["data"]["getPetById"]["name"]).to eq("Clifford")
      expect(result["data"]["getPetById"]["gender"]).to eq("M")
      expect(result["data"]["getPetById"]["age"]).to eq(2)
      expect(result["data"]["getPetById"]["description"]).to eq("Big Red Dog, likes kids")
      expect(result["data"]["getPetById"]["species"]).to eq("dog")
      expect(result["data"]["getPetById"]["ownerStory"]).to eq("#{pet_1.owner_story}")
      expect(result["data"]["getPetById"]["ownerEmail"]).to eq("#{pet_1.owner_email}")
      expect(result["data"]["getPetById"]["ownerName"]).to eq("#{pet_1.owner_name}")
      expect(result["data"]["getPetById"]["applications"]).to be_an(Array)
      expect(result["data"]["getPetById"]["applications"][0]["name"]).to eq("Joe")
      expect(result["data"]["getPetById"]["applications"][0]["email"]).to eq("joe@yahoo.com")
      expect(result["data"]["getPetById"]["applications"][0]["description"]).to eq("#{application_1.description}")
      expect(result["data"]["getPetById"]["applications"][0]["name"]).to_not eq("Kim")
      expect(result["data"]["getPetById"]["applications"][0]["email"]).to_not eq("kim@gmail.com")
      expect(result["data"]["getPetById"]["applications"][0]["description"]).to_not eq("#{application_2.description}")
      expect(result["data"]["getPetById"]["name"]).to_not eq("Garfield")
    end

    it 'returns an empty array if there are not applications for the pet' do
      pet_1 = Pet.create!(id: 1, name: "Clifford", gender: "M", age: 2, description: "Big Red Dog, likes kids", species: "dog", owner_story: "My owner is going into assisted living next month and he is worried about what will happen to me", owner_email: "old_dude@gmail.com", owner_name: "Virgil")

      result = NotFurgottenSchema.execute(query).as_json

      expect(result["data"]["getPetById"]["applications"]).to be_an(Array)
      expect(result["data"]["getPetById"]["applications"]).to eq([])
    end

    it 'errors if pet name is nil' do
      pet_1 = Pet.create!(id: 1, gender: "M", age: 2, description: "Big Red Dog, likes kids", species: "dog", owner_story: "My owner is going into assisted living next month and he is worried about what will happen to me", owner_email: "old_dude@gmail.com", owner_name: "Virgil")

      result = NotFurgottenSchema.execute(query).as_json

      expect(result["data"]).to be_nil
      expect(result).to have_key("errors")
      expect(result["errors"]).to be_an(Array)
      expect(result["errors"][0]).to have_key("message")
      expect(result["errors"][0]["message"]).to eq("Cannot return null for non-nullable field Pet.name")
    end

    it 'errors if pet gender is nil' do
      pet_1 = Pet.create!(id: 1, name: "Clifford", age: 2, description: "Big Red Dog, likes kids", species: "dog", owner_story: "My owner is going into assisted living next month and he is worried about what will happen to me", owner_email: "old_dude@gmail.com", owner_name: "Virgil")

      result = NotFurgottenSchema.execute(query).as_json

      expect(result["data"]).to be_nil
      expect(result).to have_key("errors")
      expect(result["errors"]).to be_an(Array)
      expect(result["errors"][0]).to have_key("message")
      expect(result["errors"][0]["message"]).to eq("Cannot return null for non-nullable field Pet.gender")
    end

    def query
       <<~GQL
       {
        getPetById(id: "1")
        {
         name
         gender
         age
         description
         species
         ownerStory
         ownerName
         ownerEmail
         applications {
           name
           email
           description
            }
         }
       }
       GQL
    end
  end
end
