class Mutations::UpdateApplication < Mutations::BaseMutation
  argument :id, ID, required: true
  argument :name, String, required: false
  argument :email, String, required: false
  argument :description, String, required: false
  argument :pet_id, Integer, required: false

  field :application, Types::ApplicationType
  field :errors, [String], null: false

  def resolve(attributes)
    application = Application.find(attributes[:id])
    application.update(attributes)
    if application.save
      { application: application, errors: [] }
    else
       { application: nil, errors: application.errors.full_messages }
    end
  end
end
