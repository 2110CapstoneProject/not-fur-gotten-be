module Types
  class MutationType < Types::BaseObject
    field :create_pet, mutation: Mutations::CreatePet
  end
end
