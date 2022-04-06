class Mutations::CreateApplication < Mutations::BaseMutation
  argument :name, String, required: false
  argument :email, String, required: false
  argument :description, String, required: false
  argument :pet_id, Integer, required: false

  field :application, Types::ApplicationType, null: false
  field :errors, [String], null: false

  def resolve(name:, email:, description:, pet_id:)
    pet = Pet.find(pet_id)
    application = Application.new(name: name, email: email, description: description, pet_id: pet.id)

    if application.save
      {
        application: application,
        errors: []
      }
      
    else
       {
         application: nil, errors: application.errors.full_messages
       }
    end
  end
end
