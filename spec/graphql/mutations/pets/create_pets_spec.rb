require 'rails_helper'

module Mutations
    RSpec.describe CreatePet, type: :request do
      describe ".resolve" do
        it 'creates a pet' do
          expect(Pet.count).to eq(0)
          post '/graphql', params: {query: query}
          expect(Pet.count).to eq(1)
        end
      end

      def query
          <<~GQL
          mutation {
            createPet(input: {
              name: "Boots",
              age: 3,
              gender: "M",
              description: "black lab",
              species: "dog",
              ownerStory: "My owner has to go to a nursing home next month.",
              ownerEmail: "person@gmail.com",
              ownerName: "Owner's Name"
              }) {
                pet {
                  id,
                  name,
                  gender,
                  description,
                  species,
                  ownerStory,
                  ownerEmail,
                  ownerName
                }
              errors
              }
            }
          GQL
        end
    end
  end
