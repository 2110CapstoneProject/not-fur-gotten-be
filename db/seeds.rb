
pet_1 = Pet.create!(name: "Clifford", gender: "Male", age: 2, description: "Clifford is such a good, well-behaved dog. He loves long walks and does really well with other pets. Clifford would do well with someone with a lot of space.", species: "Dog", owner_story: "I am a 90 year man who needs a good home for my best buddy Clifford. I've had him for 9 years, and we've been inseparable. I'm sad to let him go but I'm moving in with my daughter and she can't have pets. Would love to find a happy home for Clifford.", owner_email: "old_dude@gmail.com", owner_name: "Virgil", image: "https://images.unsplash.com/photo-1585559700398-1385b3a8aeb6?ixlib=rb-1.2.1&ixid=MnwxM[…]G90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80")
Application.create!(name: "Joe", email:"joe@yahoo.com", description: "I have a large yard and like to go for hikes. I would love to give Virgil the peace of mind that Clifford is in good hands.", pet_id: pet_1.id )
Application.create!(name: "Maggie", email:"marge@yahoo.com", description: "I have another young dog that I have been looking for a friend for.  I want Virgil to know that his best friend is in good hands.", pet_id: pet_1.id )

pet_2 = Pet.create!(name: "Garfield", gender: "Male", age: 6, description: "Garfield is a sweet, cuddly boy who enjoys playing with his cat nip mice and bird watching out the window.  He loves to lay in my lap and be brushed.  He is an indoor cat and would do best if he were the only cat.", species: "Cat", owner_story: "I found Garfield as a stray kitten in my back yard.  He has been such great company for me throught the years. I really worry that when I have to go to assisted living next month, that he will be taken to a shelter.  It's very stressful to think about.  I just want him to go to a good home.", owner_email: "Lawrence@gmail.com", owner_name: "Larry", image: "https://images.unsplash.com/photo-1536590158209-e9d615d525e4?ixlib=rb-1.2.1&ixid=MnwxM[…]G90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80")
Application.create!(name: "Kim", email:"kim@gmail.com", description: "I love cats and live in an apartment. I don't want Larry to stress about Garfield.  I will give him a loving home.", pet_id: pet_2.id )
Application.create!(name: "Kumar", email:"kumar@yahoo.com", description: "I used to have a cat that looks like Garfield.  I am ready for a cat again and would love to adopt.  I have a large home where I can set up a big cat tree for Garfield so he can watch birds out the window.", pet_id: pet_2.id )

pet_3 = Pet.create!(name: "Nermal", gender: "Female", age: 2, description: "A sweet, curious, young cat who has lots of energy.  She purs loudly when you pet her.  She loves her chin scratched.  Her favorite special human treat is peanut butter.", species: "Cat", owner_story: "I am terminally ill with cancer and only have about 6 months to find Nermal a home.  Most of the stress and worry I feel is about where Nermal will end up when I'm gone.  She is like family to me.", owner_email: "lady@gmail.com", owner_name: "Mary", image: "https://images.unsplash.com/photo-1582797493098-23d8d0cc6769?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjE2fHxncmF5JTIwdGFiYnklMjBjYXR8ZW58MHwxfDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60")
Application.create!(name: "Katie", email:"katie@gmail.com", description: "Nermal is such an adorable cat! I love cats and would like to help Mary so she doesn't worry about Nermal. I work from home so Nermal and I will keep each other company.", pet_id: pet_3.id )

pet_4 = Pet.create!(name: "Pugsly", gender: "Male", age: 8, description: "Pugsly is sweet little boy who loves to sit in my lap when I watch tv.  When he isn't on my lap, he likes to chase the squirrels outside.  He is used to being off leash in the yard, so someone with a fenced in yard would be ideal.  His favorite treats are Milkbones.", species: "Dog", owner_story:   "In a few weeks I will be moved to assisted living.  I wish I could take Pugsly with me. I just want to make sure he goes to a loving home after I move.", owner_email: "albert303@yahoo.com", owner_name: "Albert", image: "https://images.unsplash.com/photo-1517849845537-4d257902454a?ixlib=rb-1.2.1&ixid=MnwxM[…]90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2835&q=80")
Application.create!(name: "Kerri", email:"kerri@gmail.com", description: "I've worked with animals and had pets all my life. I would like to give Albert peace of mine that Pugsly will be in good hands.  I have a large fenced in yard with plenty of squirrels!", pet_id: pet_4.id )
Application.create!(name: "Dave", email:"daveyjones@yahoo.com", description: "I already have 1 small dog who could use a friend.  They can play all day out in my yard.  It is fenced in and has lots of trees that squirrels run up. I would love to help Albert in the process as well!", pet_id: pet_4.id )

pet_5 = Pet.create!(name: "Midnight", gender: "Female", age: 12, description: "Midnight is a sweet older cat, but you wouldn't know she is a senior kitty because of her playfulness and good health. When she isn't playing, she is sleeping in her bed by the window in the sun, or cuddling up with me and purring.  She would do best as the only cat and staying indoors.", species: "Cat", owner_story: "I am very sad that I have to go to a nursing home and cannot bring Midnight.  I pray I can find her a loving home where she will bring her new family the same joy she brought me.  I worry she will not find a home and will end up in a shelter where no one may want her because she is older. I would love it if her new family sent me photos of her once in a while.", owner_email: "janedoe@yahoo.com", owner_name: "Jane", image: "https://images.unsplash.com/photo-1609209564714-87a228068347?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTZ8fGJsYWNrJTIwY2F0fGVufDB8MXwwfHw%3D&auto=format&fit=crop&w=800&q=60")
Application.create(name: "Rob", email: "robert@yahoo.com", description: "I just had to put my cat down and am looking to adopt an older cat to give it its best life.  This is a difficult time for Jane and I want her to feel comforted knowing Midnight will be in good hands", pet_id: pet_5.id)

pet_6 = Pet.create!(name: "TutTut", gender: "Male", age: 16, description: "TutTut is a talkative, intelligent, social African Gray.  He loves to watch animal videos on TV and dance to upbeat music.  His favorite treats are berries and nuts. TutTut would be best in a home with no children and people who are experienced in owning a parrot. Sometimes he has a potty mouth, he picked that up from tv and music, but he is very sweet. He loves head sratches.", species: "Bird", owner_story: "I have  been recently diagnosed with stage 4 cancer. I really worry about what will happen to TutTut when I am gone.  He is like family to me. It would bring me so much peace knowing TutTut is going to a safe and loving home when I am gone.", owner_email: "GlendaGood@yahoo.com", owner_name: "Glenda", image: "https://images.unsplash.com/photo-1599062076043-94a78b3368ef?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDd8fGNvY2thdG9vfGVufDB8MXwwfHw%3D&auto=format&fit=crop&w=800&q=60")
Application.create!(name: "Jack", email:"jackattack@gmail.com", description: "I'm an experienced large bird owner and would love to give TutTut a new home for Glenda", pet_id: pet_6.id )


#To the pets below, need to update pet description, owner_story, and maybe application description.  Can always add more applications.
pet_7 = Pet.create!(name: "ChiChi", gender: "Male", age: 4, description: "parakeet", species: "Bird", owner_story: "My owner has to go to assisted living next month and he cannot take me.  He really wants to know I will be in good hands. ", owner_email: "JerryS@gmail.com", owner_name: "Jerry", image: "https://images.unsplash.com/photo-1623682779212-4779af054579?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjR8fHBhcmFrZWV0fGVufDB8MXwwfHw%3D&auto=format&fit=crop&w=800&q=60")
Application.create!(name: "Dawn", email:"dawndyd@gmail.com", description: "I would like help Jerry.  My parakeet just passed away so I am able to take ChiChi", pet_id: pet_7.id )

pet_8 = Pet.create!(name: "Charlie", gender: "Female", age: 7, description: "rottweiler", species: "Dog", owner_story: "My owner has to go to assisted living next month and he cannot take me.  He really wants to know I will be in good hands. ", owner_email: "my_email@gmail.com", owner_name: "Guy", image: "https://images.unsplash.com/photo-1644733082930-1fa4dfd6b378?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8cm90dHdlaWxlcnxlbnwwfDF8MHx8&auto=format&fit=crop&w=800&q=60")
Application.create!(name: "Dawn", email:"dawndyd@gmail.com", description: "I like to help Guy and Charlie.  I love going on walks in the neighborhood and could use a dog pal.", pet_id: pet_8.id )

pet_9 = Pet.create!(name: "Mandy", gender: "Female", age: 7, description: "yellow labrador retriever", species: "Dog", owner_story: "My owner has to go to a nursing home next month and she cannot take me.  She really wants to know I will be in good hands. ", owner_email: "grannyb@gmail.com", owner_name: "Betty", image: "https://images.unsplash.com/photo-1645910155056-4f029e248224?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fHllbGxvdyUyMGxhYnxlbnwwfDF8MHx8&auto=format&fit=crop&w=800&q=60")
Application.create!(name: "Joe", email:"joe@yahoo.com", description: "I have a large yard and like to go for hikes", pet_id: pet_9.id )

pet_10 = Pet.create!(name: "Burt", gender: "Male", age: 14, description: "dark gray domestic short hair", species: "Cat", owner_story: "My owner has to go to an assisted living facility next month and cannot take me.  They are really worried about where I will end up  I am their only family. ", owner_email: "elderly_person@yahoo.com", owner_name: "Sam", image: "https://images.unsplash.com/photo-1492370284958-c20b15c692d2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Z3JheSUyMGNhdHxlbnwwfDF8MHx8&auto=format&fit=crop&w=800&q=60")
Application.create!(name: "Kerri", email:"kerri@gmail.com", description: "I've worked with animals and had pets all my life. I would like to give Albert peace of mine that Burt will be in good hands.", pet_id: pet_10.id )

#pets without applications
pet_11 = Pet.create!(name: "Fluffy", gender: "Female", age: 3, description: "medium haired white cat", species: "Cat", owner_story: "My owner is going into assisted living next month and he is worried about what will happen to me", owner_email: "margie@gmail.com", owner_name: "Margorie", image: "https://images.unsplash.com/photo-1625696198843-0e7ffe993086?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHdoaXRlJTIwY2F0fGVufDB8MXwwfHw%3D&auto=format&fit=crop&w=800&q=60")
pet_12 = Pet.create!(name: "Loki", gender: "Male", age: 5, description: "high energy husky", species: "Dog", owner_story: "My owner is terminally ill and wants to make sure I end up with someone who can love me and go on many walks.", owner_email: "dana@gmail.com", owner_name: "Dana", image: "https://images.unsplash.com/photo-1605568427561-40dd23c2acea?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGh1c2t5fGVufDB8MXwwfHw%3D&auto=format&fit=crop&w=800&q=60")
