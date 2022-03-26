# frozen_string_literal: true

module Types
  class ApplicationType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :email, String
    field :description, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :pet_id, Integer
  end
end
