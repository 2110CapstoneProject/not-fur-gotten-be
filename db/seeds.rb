
pet_1 = Pet.create!(name: "Clifford", gender: "Male", age: 2, description: "Big Red Dog, likes kids", species: "Dog", owner_story: "My owner is going into assisted living next month and he is worried about what will happen to me", owner_email: "old_dude@gmail.com", owner_name: "Virgil", image: "")
Application.create!(name: "Joe", email:"joe@yahoo.com", description: "I have a large yard and like to go for hikes", pet_id: pet_1.id )
Application.create!(name: "Maggie", email:"marge@yahoo.com", description: "I have another young dog that I have been looking for a friend for.  I'd love to give Virgil some peace of mind his dog will be ok.", pet_id: pet_1.id )

pet_2 = Pet.create!(name: "Garfield", gender: "Male", age: 6, description: "Fat orange cat", species: "Cat", owner_story: "My owner is going into assisted living next month and he is worried about what will happen to me", owner_email: "old_dude@gmail.com", owner_name: "Virgil", image: "")
Application.create!(name: "Kim", email:"kim@gmail.com", description: "I love cats and live in an apartment", pet_id: pet_2.id )
Application.create!(name: "Kumar", email:"kumar@yahoo.com", description: "I really want another cat", pet_id: pet_2.id )

pet_3 = Pet.create!(name: "Nermal", gender: "Female", age: 3, description: "Gray Tabby", species: "Cat", owner_story: "My owner is terminally ill with cancer and only has about 6 months to find me a home", owner_email: "lady@gmail.com", owner_name: "Ethel")
Application.create!(name: "Harold", email:"harold@gmail.com", description: "I love cats and would like to help Ethel out.", pet_id: pet_3.id )

pet_4 = Pet.create!(name: "Taco", gender: "Male", age: 4, description: "brindle bull dog", species: "Dog", owner_story: "My owner will be transitioning into a nursing home soon and worries where I will end up", owner_email: "geriatric_guy@yahoo.com", owner_name: "Albert", image: "")
Application.create!(name: "Kerri", email:"kerri@gmail.com", description: "I've worked with animals and had pets all my life. I would like to give Albert peace of mine that Taco will be in good hands.", pet_id: pet_4.id )
Application.create!(name: "Dave", email:"daveyjones@yahoo.com", description: "I already have 1 bulldog who could use a friend.  I would love to help Albert in the process as well!", pet_id: pet_4.id )

pet_5 = Pet.create!(name: "Midnight", gender: "Female", age: 12, description: "short haired black cat", species: "Cat", owner_story: "My owner is terminally ill. It stresses her most worrying about what will happen to me.  I am like family to her.", owner_email: "janedoe@yahoo.com", owner_name: "Jane", image: "")
Application.create(name: "Rob", email: "robert@yahoo.com", description: "I just had to put my cat down and am looking to adopt an older cat to give it its best life.  This is a difficult time for Jane and I want her to feel peace in knowing Midnight will be in good hands", pet_id: pet_5.id)

pet_6 = Pet.create!(name: "TutTut", gender: "Male", age: 16, description: "cockatoo", species: "Bird", owner_story: "My owner is terminally ill. It stresses her most worrying about what will happen to me.  I am like family to her.", owner_email: "GlendaGood@yahoo.com", owner_name: "Glenda", image: "")
Application.create!(name: "Jack", email:"jackd@gmail.com", description: "I'm an experienced cockatoo owner and would love to give TutTut a new home for Glenda", pet_id: pet_6.id )

pet_7 = Pet.create!(name: "ChiChi", gender: "Male", age: 4, description: "parakeet", species: "Bird", owner_story: "My owner has to go to assisted living next month and he cannot take me.  He really wants to know I will be in good hands. ", owner_email: "JerryS@gmail.com", owner_name: "Jerry", image: "")
Application.create!(name: "Dawn", email:"dawndyd@gmail.com", description: "I would like help Jerry.  My parakeet just passed away so I am able to take ChiChi", pet_id: pet_7.id )

pet_8 = Pet.create!(name: "Charlie", gender: "Female", age: 7, description: "rottweiler", species: "Dog", owner_story: "My owner has to go to assisted living next month and he cannot take me.  He really wants to know I will be in good hands. ", owner_email: "my_email@gmail.com", owner_name: "Guy", image: "")
Application.create!(name: "Dawn", email:"dawndyd@gmail.com", description: "I would like help Jerry.  My parakeet just passed away so I am able to take ChiChi", pet_id: pet_8.id )

pet_9 = Pet.create!(name: "Mandy", gender: "Female", age: 7, description: "yellow labrador retriever", species: "Dog", owner_story: "My owner has to go to a nursing home next month and she cannot take me.  She really wants to know I will be in good hands. ", owner_email: "grannyb@gmail.com", owner_name: "Betty", image: "")
Application.create!(name: "Joe", email:"joe@yahoo.com", description: "I have a large yard and like to go for hikes", pet_id: pet_9.id )

pet_10 = Pet.create!(name: "Burt", gender: "Male", age: 14, description: "dark gray domestic short hair", species: "Cat", owner_story: "My owner has to go to an assisted living facility next month and cannot take me.  They are really worried about where I will end up  I am their only family. ", owner_email: "elderly_person@yahoo.com", owner_name: "Sam", image: "")
Application.create!(name: "Kerri", email:"kerri@gmail.com", description: "I've worked with animals and had pets all my life. I would like to give Albert peace of mine that Burt will be in good hands.", pet_id: pet_10.id )

#pets without applications
pet_11 = Pet.create!(name: "Fluffy", gender: "Female", age: 3, description: "long haired white cat", species: "Cat", owner_story: "My owner is going into assisted living next month and he is worried about what will happen to me", owner_email: "margie@gmail.com", owner_name: "Margorie", image: "")
pet_12 = Pet.create!(name: "Bruno", gender: "Male", age: 8, description: "high energy weimaraner", species: "Dog", owner_story: "My owner is terminally ill and wants to make sure I end up with someone who can love me and go on many walks.", owner_email: "dana@gmail.com", owner_name: "Dana", image: "")
