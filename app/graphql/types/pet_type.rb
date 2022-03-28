# frozen_string_literal: true

module Types
  class PetType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :age, Integer, null: false
    field :description, String, null: false
    field :species, String, null: false
    field :owner_story, String
    field :gender, String, null: false
    field :owner_email, String, null: false
    field :owner_name, String, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :applications, [Types::ApplicationType], null: false
  end
end
