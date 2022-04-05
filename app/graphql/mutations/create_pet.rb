class Mutations::CreatePet < Mutations::BaseMutation
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

  def resolve(name:, age:, description:, species:, owner_story:, gender:, owner_email:, owner_name:, image:)
    pet = Pet.new(name: name, age: age, description: description, species: species.capitalize, owner_story: owner_story, gender: gender.capitalize, owner_email: owner_email, owner_name: owner_name, image: image)
    if pet.save
      { pet: pet, errors: [] }
    else
      { pet: nil, errors: pet.errors.full_messages }
    end
  end

end
