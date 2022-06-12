require 'rails_helper'

module Mutations
    RSpec.describe CreatePet, type: :request do
      describe ".resolve" do
        it 'creates a pet' do
          expect(Pet.count).to eq(0)
          post '/graphql', params: {query: all_fields_complete}
          expect(Pet.count).to eq(1)
        end

        it 'capitalizes species, gender' do
          expect(Pet.count).to eq(0)
          post '/graphql', params: {query: all_fields_complete}
          expect(Pet.count).to eq(1)
          expect(Pet.first.species).to eq('Dog')
        end

        it 'allows for owner_story to be optional' do
          expect(Pet.count).to eq(0)
          post '/graphql', params: {query: owner_story_null}
          expect(Pet.count).to eq(1)
        end

        it 'errors if an attribute other than owner_story is null' do
          expect(Pet.count).to eq(0)
          post '/graphql', params: {query: name_null}
          expect(Pet.count).to eq(0)
        end
      end

      def all_fields_complete
          <<~GQL
          mutation {
            createPet(input: {
              name: "Burt",
              age: 3,
              gender: "M",
              description: "black lab",
              species: "doG",
              ownerStory: "I have to go to assisted living",
              ownerEmail: "person@gmail.com",
              ownerName: "Owner's Name"
              image: "image_url"
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

      def owner_story_null
          <<~GQL
          mutation {
            createPet(input: {
              name: "Burt",
              age: 3,
              gender: "M",
              description: "black lab",
              species: "dog",
              ownerStory: null,
              ownerEmail: "person@gmail.com",
              ownerName: "Owner's Name",
              image: "image_url"
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
                  image
                }
              errors
              }
            }
          GQL
      end

      def name_null
          <<~GQL
          mutation {
            createPet(input: {
              name: null,
              age: 3,
              gender: "M",
              description: "black lab",
              species: "dog",
              ownerStory: "I have to go to assisted living",
              ownerEmail: "person@gmail.com",
              ownerName: "Owner's Name",
              image: "image_url"
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
                  image
                }
              errors
              }
            }
          GQL
      end
    end
  end
