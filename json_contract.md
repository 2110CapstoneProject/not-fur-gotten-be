## JSON CONTRACT

All queries are made using a single GraphQL endpoint:

```
post to '/graphql'
```

All queries must be in GraphQL format in the body of the request. Note the camelCase.

This application supports the following Graphql queries:



**Query for getAllPets as GraphQL:**

```
{
  getAllPets {
    id
    name
    age
    gender
    description
    species
    ownerStory
    ownerEmail
    ownerName
    applications {
      name
      email
      description
    }
  }
}

```
**Response for getAllPets:**

```
{
    "data": {
        "getAllPets": [
            {
                "id": "1",
                "name": "Clifford",
                "age": 2,
                "gender": "M",
                "description": "Big Red Dog, likes kids",
                "species": "dog",
                "ownerStory": "My owner is going into assisted living next month and he is worried about what will happen to me",
                "ownerEmail": "old_dude@gmail.com",
                "ownerName": "Virgil",
                "applications": [
                    {
                        "name": "Joe",
                        "email": "joe@yahoo.com",
                        "description": "I have a large yard and like to go for hikes"
                    }
                ]
            },
            {
                "id": "2",
                "name": "Garfield",
                "age": 6,
                "gender": "M",
                "description": "Fat orange cat",
                "species": "cat",
                "ownerStory": "My owner is going into assisted living next month and he is worried about what will happen to me",
                "ownerEmail": "old_dude@gmail.com",
                "ownerName": "Virgil",
                "applications": [
                    {
                        "name": "Kim",
                        "email": "kim@gmail.com",
                        "description": "I love cats and live in an apartment"
                    },
                    {
                        "name": "Kumar",
                        "email": "kumar@yahoo.com",
                        "description": "I really want another cat"
                    }
                ]
            },
            {
                "id": "3",
                "name": "Nermal",
                "age": 3,
                "gender": "F",
                "description": "Gray Tabby",
                "species": "cat",
                "ownerStory": "My owner is terminally ill with cancer and only has about 6 months to find me a home",
                "ownerEmail": "lady@gmail.com",
                "ownerName": "Ethel",
                "applications": [
                    {
                        "name": "Harold",
                        "email": "harold@gmal.com",
                        "description": "I love cats and would like to help out Ethel"
                    }
                ]
            }
        ]
    }
}

```


**Query for getPetById(id: "1") as GraphQL:**

```
{
  getPetById(id: "1")
  {
    id
    name
    age
    gender
    description
    species
    ownerStory
    ownerEmail
    ownerName
    applications {
      name
      email
      description
    }
  }
}

```
**Response for getPetById(id: "1"):**

```
{
    "data": {
        "getPetById": {
            "id": "1",
            "name": "Clifford",
            "age": 2,
            "gender": "M",
            "description": "Big Red Dog, likes kids",
            "species": "dog",
            "ownerStory": "My owner is going into assisted living next month and he is worried about what will happen to me",
            "ownerEmail": "old_dude@gmail.com",
            "ownerName": "Virgil",
            "applications": [
                {
                    "name": "Joe",
                    "email": "joe@yahoo.com",
                    "description": "I have a large yard and like to go for hikes"
                }
            ]
        }
    }
}

```


**Mutation to createPet**

```
mutation {
  createPet(input: {
    name: "Kitty",
    age: 9,
    gender: "F",
    description: "siamese cat",
    species: "cat",
    ownerStory: "My owner has to go to assisted living very soon and cannot take me, she really worries where I end up",
    ownerEmail: "Dorothy27@yahoo.com",
    ownerName: "Dorothy"
    }) {
      pet {
        id,
        name,
        gender,
        description,
        species,
        ownerStory,
        ownerEmail,
        ownerName
      }
    errors
    }
  }

```
**Response for createPet:**

```
{
    "data": {
        "createPet": {
            "pet": {
                "id": "23",
                "name": "Kitty",
                "gender": "F",
                "description": "siamese cat",
                "species": "cat",
                "ownerStory": "My owner has to go to assisted living very soon and cannot take me, she really worries where I end up",
                "ownerEmail": "Dorothy27@yahoo.com",
                "ownerName": "Dorothy"
            },
            "errors": []
        }
    }
}


```
**Mutation to createPet with name missing (creates error)**

```
mutation {
  createPet(input: {
    age: 9,
    gender: "F",
    description: "siamese cat",
    species: "cat",
    ownerStory: "My owner has to go to assisted living very soon and cannot take me, she really worries where I end up",
    ownerEmail: "Dorothy27@yahoo.com",
    ownerName: "Dorothy"
    }) {
      pet {
        id,
        name,
        gender,
        description,
        species,
        ownerStory,
        ownerEmail,
        ownerName
      }
    errors
    }
  }

```
**Response for createPet with error example:**

```
{
    "errors": [
        {
            "message": "Argument 'name' on InputObject 'CreatePetInput' is required. Expected type String!",
            "locations": [
                {
                    "line": 2,
                    "column": 20
                }
            ],
            "path": [
                "mutation",
                "createPet",
                "input",
                "name"
            ],
            "extensions": {
                "code": "missingRequiredInputObjectAttribute",
                "argumentName": "name",
                "argumentType": "String!",
                "inputObjectType": "CreatePetInput"
            }
        }
    ]
}

```


**Mutation to createApplication**

```
mutation {
    createApplication(input: {
        name: "Bob",
        email: "bob@gmail.com",
        description: "I love all animals and want to help out the owner.",
        petId: 2
        }) {
        application {
            id,
            name,
            email,
            description
            petId
        }
        errors
        }
    }

```
**Response for createApplication:**

```
{
    "data": {
        "createApplication": {
            "application": {
                "id": "21",
                "name": "Bob",
                "email": "bob@gmail.com",
                "description": "I love all animals and want to help out the owner.",
                "petId": 2
            },
            "errors": []
        }
    }
}

```


**Mutation to createApplication with name missing (creates error)**

```
mutation {
    createApplication(input: {
        email: "bob@gmail.com",
        description: "I love all animals and want to help out the owner.",
        petId: 2
        }) {
        application {
            id,
            name,
            email,
            description
            petId
        }
        errors
        }
    }

```
**Response for createApplication with error example:**

```
{
    "errors": [
        {
            "message": "Argument 'name' on InputObject 'CreateApplicationInput' is required. Expected type String!",
            "locations": [
                {
                    "line": 2,
                    "column": 30
                }
            ],
            "path": [
                "mutation",
                "createApplication",
                "input",
                "name"
            ],
            "extensions": {
                "code": "missingRequiredInputObjectAttribute",
                "argumentName": "name",
                "argumentType": "String!",
                "inputObjectType": "CreateApplicationInput"
            }
        }
    ]
}

```
