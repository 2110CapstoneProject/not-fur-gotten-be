module Types
  class MutationType < Types::BaseObject
    field :create_pet, mutation: Mutations::CreatePet
    field :create_application, mutation: Mutations::CreateApplication
  end
end
