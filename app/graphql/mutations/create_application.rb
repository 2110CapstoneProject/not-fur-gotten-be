class Mutation::CreateApplication < Mutations::BaseMutation
  argument :name, String, required: true
  argument :email, String, required: true
  argument :description, String, required: true
  argument :created_at, DateTime, required: true
  argument :updated_at, DateTime, required: true
  argument :bigint, Integer, required: true

  field :application, Types::ApplicationType, null: false
  field :errors, [String], null: false

  def resolve(name:, email:, description:, created_at:, updated_at:, big_int:)
    application = Application.new(name: name, email: email, description: description, created_at: created_at, updated_at: updated_at, big_int: big_int)

    if (application.save)
      {
        application: application
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
