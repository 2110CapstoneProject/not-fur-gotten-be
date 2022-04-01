require 'rails_helper'

module Mutations
    RSpec.describe CreateApplication, type: :request do
      describe ".resolve" do
        it 'creates an application' do

          expect(Application.count).to eq(0)
          post '/graphql', params: {query: query}
          expect(Application.count).to eq(1)
        end
      end

      def query
        pet = Pet.create!(name: "Clifford", gender: "M", age: 2, description: "Big Red Dog, likes kids", species: "dog", owner_story: "My owner is going into assisted living next month and he is worried about what will happen to me", owner_email: "old_dude@gmail.com", owner_name: "Virgil")

          <<~GQL
          mutation {
            createApplication(input: {
              name: "Bob",
              email: "bob@gmail.com",
              description: "I love dogs",
              petId: #{pet.id}
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
