# frozen_string_literal: true

module Types
  class ApplicationType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :email, String, null: false
    field :description, String, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :pet_id, Integer, null: false
  end
end
