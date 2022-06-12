require 'rails_helper'

module Mutations
    RSpec.describe UpdatePet, type: :request do
      describe ".resolve" do
        it 'updates a pet' do
          @pet_1 = Pet.create!(name: "Burton", age: 7, gender: "F",
            description: "white long hair", species: "dog", owner_story: "original story",
            owner_email: "original@email.com", owner_name: "Wrong Name",
            image: "original_image_string")

          expect(@pet_1.name).to eq("Burton")
          expect(@pet_1.age).to eq(7)

          post '/graphql', params: { query: updated_pet }

          updated_pet = Pet.find(@pet_1.id)

          expect(updated_pet.name).to eq("Burt")
          expect(updated_pet.age).to eq(3)
          expect(updated_pet.gender).to eq("M")
          expect(updated_pet.description).to eq("dark gray DSH")
          expect(updated_pet.species).to eq("Cat")
          expect(updated_pet.owner_story).to eq("Updated story")
          expect(updated_pet.owner_email).to eq("updated@gmail.com")
          expect(updated_pet.owner_name).to eq("Owner's Updated Name")
          expect(updated_pet.image).to eq("updated_image_url")
        end

        def updated_pet
            <<~GQL
            mutation {
              pet: updatePet(
                input: {
                id: "#{@pet_1.id}"
                name: "Burt",
                age: 3,
                gender: "M",
                description: "dark gray DSH",
                species: "cat",
                ownerStory: "Updated story",
                ownerEmail: "updated@gmail.com",
                ownerName: "Owner's Updated Name"
                image: "updated_image_url"
                }) {
                  pet {
                    id,
                    name,
                    gender,
                    description,
                    species,
                    ownerStory,
                    ownerEmail,
                    ownerName,
                    image
                  }
                errors
                }
              }
            GQL
        end
      end    
    end
  end
