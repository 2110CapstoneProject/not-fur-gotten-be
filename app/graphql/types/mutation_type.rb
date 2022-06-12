module Types
  class MutationType < Types::BaseObject
    field :create_pet, mutation: Mutations::CreatePet
    field :update_pet, mutation: Mutations::UpdatePet
    field :create_application, mutation: Mutations::CreateApplication
    field :update_application, mutation: Mutations::UpdateApplication
  end
end
