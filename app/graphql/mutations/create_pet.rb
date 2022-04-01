class Mutations::CreatePet < Mutations::BaseMutation
  argument :name, String, required: true
  argument :age, Integer, required: true
  argument :description, String, required: true
  argument :species, String, required: true
  argument :gender, String, required: true
  argument :owner_story, String, required: false
  argument :owner_email, String, required: true
  argument :owner_name, String, required: true

  field :pet, Types::PetType, null: false
  field :errors, [String], null: false

  def resolve(name:, age:, description:, species:, owner_story:, gender:, owner_email:, owner_name:)
    pet = Pet.new(name: name, age: age, description: description, species: species, owner_story: owner_story, gender: gender, owner_email: owner_email, owner_name: owner_name)
    
    if pet.save
      {
        pet: pet,
        errors: []
      }
    else
      {
        pet: nil,
        errors: pet.errors.full_message
      }
    end
  end

end
