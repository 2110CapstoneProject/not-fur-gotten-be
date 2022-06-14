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

        post '/graphql', params: {query: updated_application}

        application_data = JSON.parse(response.body)["data"]["updateApplication"]["application"]

        expect(application_data["id"]).to eq(@application.id.to_s)
        expect(application_data["name"]).to eq("Brooke")
        expect(application_data["email"]).to eq("brooke@gmail.com")
        expect(application_data["description"]).to eq("I love all types of animals.")
        expect(application_data["petId"]).to eq(@pet.id)
      end

      it 'errors if attributes are null' do
        @pet_2 = Pet.create!(name: "Burton", age: 7, gender: "F",
          description: "white long hair", species: "dog", owner_story: "original story",
          owner_email: "original@email.com", owner_name: "Wrong Name",
          image: "original_image_string")
        @application_2 = Application.create!(pet_id: @pet_2.id, name: "Kerri",
          email: "kerri@yahoo.com", description: "I love all animals")

        post '/graphql', params: { query: attributes_null }

        errors = JSON.parse(response.body)["data"]["updateApplication"]["errors"]

        expect(@pet_2.applications.first.name).to eq("Kerri")
        expect(errors.include?("Name can't be blank")).to eq(true)
        expect(errors.include?("Email can't be blank")).to eq(true)
        expect(errors.include?("Description can't be blank")).to eq(true)
      end

      def attributes_null
          <<~GQL
          mutation {
            updateApplication(input: {
              id: #{@application_2.id}
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

      def updated_application
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
end
