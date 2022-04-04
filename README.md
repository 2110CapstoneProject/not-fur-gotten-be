# Not Fur-gotten - a Turing Capstone project

## Background & Description:
"Not Fur-gotten" is a group project created over the course of 14 days by members of the Turing School of Software and Design. It is designed to allow pet owners to find new owners for pets that they are unable to care for any longer. Pet owners can post their pets on Not Fur-Gotten with a description and some information about the pet, and then pet adopters can post applications for the pets. Eventually, the owner can select a new owner for their pet from all the applicants. 

## Backend Features
- Build out database
- Utilize GraphQL to create endpoint, queries, and mutations for front end team to access and modify database
- Implement Github Actions for CI/CD

## Requirements and Setup (for Mac):
### Ruby and Rails
- Ruby -V 2.7.2
- Rails -V 5.2.6

### Gems Utilized
- rack-cors 
- graphql
- graphiql-rails
- rspec
- pry
- simplecov
- capybara
- launchy 
- orderly
- shoulda-matchers 
- faker 

### Setup
1. Fork and/or Clone this Repo from GitHub.
2. In your terminal use `$ git clone <ssh or https path>`
3. Change into the cloned directory using `$ cd not-fur-gotten-be`
4. Install the gem packages using `$ bundle install`
5. Database Migrations can be setup by running:
```shell
$ rails rake db:{drop,create,migrate,seed}
```


## Database Schema

![not-fur-gotten-schema](https://user-images.githubusercontent.com/20864043/161596829-700b8e0d-2a25-45d6-a501-6fa5df6d8613.png)

Our application is based on a one to many relationship between pets and applications - each pet can have many applications. We chose to include original owner user information in the pet. New adoptive owner information is included in the application. 

## Endpoint/JSON Contract

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


## Further Project Information
 - [Turing Project Details](https://mod4.turing.edu/projects/capstone/expectations.html)
 - [Heroku Base URL](https://not-fur-gotten-be.herokuapp.com/) 
 - [Frontend Heroku Repo](https://github.com/Turing-MarketMap/market-map-fe)

