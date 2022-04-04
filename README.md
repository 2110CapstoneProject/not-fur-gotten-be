# MarketMap: A Turing 2110 BE Mod 3 Consultancy Project

## Background & Description:


## Backend Features
- Exposing internal APIs for Market Map's Frontend.
- Import simulated db with a CSV file (could also be replaced by consuming a third party API)
- Implement CircleCI
- Build a project with Service Oriented Architecture (SOA)
- Train and deploy a series of ANN regressors that predict the expected price of a specific car model.

## Requirements and Setup (for Mac):
### Ruby and Rails
- Ruby -V 2.7.2
- Rails -V 5.2.6

### Gems Utilized
- rspec
- pry
- simplecov

### Setup
1. Fork and/or Clone this Repo from GitHub.
2. In your terminal use `$ git clone <ssh or https path>`
3. Change into the cloned directory using `$ cd _________`
4. Install the gem packages using `$ bundle install`
5. Database Migrations can be setup by running:
```shell
$ rails rake db:{drop,create,migrate,seed}
```


## Database Schema


## Internal API Endpoints


## Further Project Information
 - [Turing Project Details](https://backend.turing.edu/module3/projects/consultancy/)
 - [Heroku Base URL](https://consultancy-be.herokuapp.com/) (Must add on the rest of the url to see example JSON)
 - [Frontend Heroku Market Map Repo](https://github.com/Turing-MarketMap/market-map-fe)

