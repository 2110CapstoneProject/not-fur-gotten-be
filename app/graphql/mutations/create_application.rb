class Mutations::CreateApplication < Mutations::BaseMutation
  argument :name, String, required: false
  argument :email, String, required: false
  argument :description, String, required: false
  argument :pet_id, Integer, required: false

  field :application, Types::ApplicationType, null: false
  field :errors, [String], null: false

  def resolve(attributes)
    pet = Pet.find(attributes[:pet_id])
    attributes[:pet_id] = pet.id
    application = Application.new(attributes)
    if application.save
      { application: application, errors: [] }
    else
       { application: nil, errors: application.errors.full_messages }
    end
  end
end
