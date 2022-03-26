pet_1 = Pet.create!(name: "Clifford", gender: "M", age: 2, description: "Big Red Dog, likes kids", species: "dog", owner_story: "My owner is going into assisted living next month and he is worried about what will happen to me", owner_email: "old_dude@gmail.com", owner_name: "Virgil")
pet_2 = Pet.create!(name: "Garfield", gender: "M", age: 6, description: "Fat orange cat", species: "cat", owner_story: "My owner is going into assisted living next month and he is worried about what will happen to me", owner_email: "old_dude@gmail.com", owner_name: "Virgil")
pet_3 = Pet.create!(name: "Nermal", gender: "F", age: 3, description: "Gray Tabby", species: "cat", owner_story: "My owner is terminally ill with cancer and only has about 6 months to find me a home", owner_email: "lady@gmail.com", owner_name: "Ethel")

application_1 = Application.create!(name: "Joe", email:"joe@yahoo.com", description: "I have a large yard and like to go for hikes", pet_id: pet_1.id )
application_2 = Application.create!(name: "Kim", email:"kim@gmail.com", description: "I love cats and live in an apartment", pet_id: pet_2.id )
application_3 = Application.create!(name: "Kumar", email:"kumar@yahoo.com", description: "I really want another cat", pet_id: pet_2.id )
application_4 = Application.create!(name: "Harold", email:"harold@gmal.com", description: "I love cats and would like to help out Ethel", pet_id: pet_3.id )
