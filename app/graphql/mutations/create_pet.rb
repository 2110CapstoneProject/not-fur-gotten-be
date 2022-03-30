class Pet::CreateApplication < Mutations::BaseMutation
  argument :name, String, required: true
  argument :age, Integer, required: true
  argument :description, String, required: true
  argument :species, String, required: true
  argument :owner_story, String, required: true
  argument :gender, String, required: true
  argument :owner_email, String, required: true
  argument :owner_name, String, required: true
  argument :created_at, DateTime, required: true
  argument :updated_at, DateTime, required: true

end
