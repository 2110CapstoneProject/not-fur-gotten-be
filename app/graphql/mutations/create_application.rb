class Mutation::CreateApplication < Mutations::BaseMutation
  argument :name, String, required: true
  argument :email, String, required: true
  argument :description, String, required: true
  argument :created_at, DateTime, required: true
  argument :updated_at, DateTime, required: true
  argument :bigint, Integer, required: true

  field :application, Types::UserType, null: false
  field :errors, [String], null: false

  def resolve(name:, email:, description:, created_at:) 

  end
end
