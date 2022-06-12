module Types
  class QueryType < Types::BaseObject
    field :get_all_pets, [Types::PetType], null: false

    def get_all_pets
      Pet.all
    end

    field :get_pet_by_id, Types::PetType, null: false do
      argument :id, ID, required: true
    end

    def get_pet_by_id(id:)
      Pet.find(id)
    end

    field :get_all_applications, [Types::ApplicationType], null: false

    def get_all_applications
      Application.all
    end

    field :get_application_by_id, Types::ApplicationType, null: false do
      argument :id, ID, required: true
    end

    def get_application_by_id(id:)
      Application.find(id)
    end
  end
end
