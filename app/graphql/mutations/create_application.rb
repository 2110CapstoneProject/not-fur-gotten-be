class Mutations::CreateApplication < Mutations::BaseMutation
  argument :name, String, required: true
  argument :email, String, required: true
  argument :description, String, required: true
  argument :pet_id, Integer, required: true

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
         application: nil,
         errors: application.errors.full_message
       }
    end
  end
end
