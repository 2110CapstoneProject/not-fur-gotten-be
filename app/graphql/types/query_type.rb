module Types
  class QueryType < Types::BaseObject
    # include GraphQL::Types::Relay::HasNodeField
    # include GraphQL::Types::Relay::HasNodesField
    field :pets, [Types::PetType], null: false

    def pets
      Pet.all
    end

    field :pet, Types::PetType, null: false do
      argument :id, ID, required: true
    end

    def pet(id:)
      Pet.find(id)
    end



    field :applications, [Types::ApplicationType], null: false

    def applications
      Application.all
    end

    field :application, Types::ApplicationType, null: false do
      argument :id, ID, required: true
    end

    def application(id:)
      Application.find(id)
    end

  end
end
