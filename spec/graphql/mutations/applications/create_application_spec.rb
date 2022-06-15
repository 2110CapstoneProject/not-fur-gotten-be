require 'rails_helper'

module Mutations
  RSpec.describe CreateApplication, type: :request do
    describe ".resolve" do
      it 'creates an application' do
        @pet = Pet.create!(name: "Clifford", gender: "M", age: 2,
          description: "Big Red Dog, likes kids", species: "dog",
          owner_story: "My owner is going into assisted living next month and he is worried about what will happen to me",
          owner_email: "old_dude@gmail.com", owner_name: "Virgil")

        post '/graphql', params: {query: application_info}

        application_data = JSON.parse(response.body)["data"]["createApplication"]

        expect(Application.all).to eq(@pet.applications)
        expect(application_data["application"]["name"]).to eq("Bob")
        expect(application_data["application"]["email"]).to eq("bob@gmail.com")
        expect(application_data["application"]["description"]).to eq("I love dogs")
        expect(application_data["application"]["petId"]).to eq(@pet.id)
        expect(application_data["errors"]).to eq([])
      end

      it 'errors if attributes are null' do
        @pet_2 = Pet.create!(name: "Clifford", gender: "M", age: 2, description: "Big Red Dog, likes kids", species: "dog", owner_story: "My owner is going into assisted living next month and he is worried about what will happen to me", owner_email: "old_dude@gmail.com", owner_name: "Virgil")

        post '/graphql', params: {query: attributes_null}

        errors = JSON.parse(response.body)["data"]["createApplication"]["errors"]

        expect(Application.count).to eq(0)
        expect(errors.include?("Name can't be blank")).to eq(true)
        expect(errors.include?("Email can't be blank")).to eq(true)
        expect(errors.include?("Description can't be blank")).to eq(true)
      end

      def application_info
        <<~GQL
        mutation {
          createApplication(input: {
            name: "Bob",
            email: "bob@gmail.com",
            description: "I love dogs",
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

      def attributes_null
        <<~GQL
        mutation {
          createApplication(input: {
            name: null,
            email: null,
            description: null,
            petId: #{@pet_2.id}
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
end
