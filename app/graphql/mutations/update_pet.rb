class Mutations::UpdatePet < Mutations::BaseMutation
  argument :id, ID, required: true
  argument :name, String, required: false
  argument :age, Integer, required: false
  argument :description, String, required: false
  argument :species, String, required: false
  argument :gender, String, required: false
  argument :owner_story, String, required: false
  argument :owner_email, String, required: false
  argument :owner_name, String, required: false
  argument :image, String, required: false

  field :pet, Types::PetType
  field :errors, [String], null: false

  def resolve(attributes)
    pet = Pet.find(attributes[:id])
    attributes[:species] = attributes[:species].capitalize
    attributes[:gender] = attributes[:gender].capitalize
    pet.update(attributes)
    if pet.save
      { pet: pet, errors: [] }
    else
      { pet: nil, errors: pet.errors.full_messages }
    end
  end
end
