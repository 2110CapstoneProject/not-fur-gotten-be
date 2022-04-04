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

## Internal API Endpoints


## Further Project Information
 - [Turing Project Details](https://backend.turing.edu/module3/projects/consultancy/)
 - [Heroku Base URL](https://consultancy-be.herokuapp.com/) (Must add on the rest of the url to see example JSON)
 - [Frontend Heroku Market Map Repo](https://github.com/Turing-MarketMap/market-map-fe)

