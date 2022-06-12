require 'rails_helper'

module Mutations
    RSpec.describe UpdateApplication, type: :request do
      describe ".resolve" do
        it 'updates an application' do
          @pet = Pet.create!(name: "Burton", age: 7, gender: "F",
            description: "white long hair", species: "dog", owner_story: "original story",
            owner_email: "original@email.com", owner_name: "Wrong Name",
            image: "original_image_string")
          @application = Application.create!(pet_id: @pet.id, name: "Kerri",
            email: "kerri@yahoo.com", description: "I love all animals")

          post '/graphql', params: {query: query}
        end
      end

      def query
        pet = Pet.create!(name: "Clifford", gender: "M", age: 2, description: "Big Red Dog, likes kids", species: "dog", owner_story: "My owner is going into assisted living next month and he is worried about what will happen to me", owner_email: "old_dude@gmail.com", owner_name: "Virgil")
          <<~GQL
          mutation {
            updateApplication(input: {
              id: #{@application.id}
              name: "Brooke",
              email: "brooke@gmail.com",
              description: "I love all types of animals.",
              petId: #{@pet.id}
              }) {
                application {
                  id,
                  name,
                  email,
                  description
                  petId
                }
              errors
              }
            }
          GQL
        end
    end
  end




  
