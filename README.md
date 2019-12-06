# MyCloset

MyCloset is a service that allows a user to sign in and keep track of their closet as well as the closets of family members etc. Users can add items to various closets and assign categories to the items. They can then find an item based on a desired category. It allows for keeping track of clothing conditions, number of times worn, etc. 

A weather API is also included with the user's city information.(In case it is rainy, then they can view all clothing in the "Rain" category if they need to plan.)

The motivation behind this idea is to reduce waste and unnecessary shopping. Too often, we feel compelled to purchase things online that catch our eye in the moment, but forget we already have something extremely similar sitting in our closet already.
 

## Installation

After downloading this repo, use the package manager, bundler, to install necessary gems for MyCloset. Then migrate the tables. 

```bash
bundle install 
rails db:migrate
```

## Usage
Because this website is not hosted yet,
to launch the website on your localhost, start the rails server in your command line.
```bash
rails s
```
Sign Up to create a new account and password. This will allow you to now Log In and Create a Closet. Once you Create a Closet, you can then Add a New Item and even upload a photo of that item!

## Built With 
```
ruby ~> 2.6.1
rails ~> 6.0.1
sqlite3 ~> 1.4
bcrypt ~> 3.1.7 
bootstrap ~> 4.4.1
bootstrap_form ~> 4.0
activerecord-reset-pk-sequence
```
[OpenWeather API](https://rapidapi.com/community/api/open-weather-map/endpoints)

## Project Status
This project is for the second module of my bootcamp. I am still learning CSS styling. I hope to be able to continue to build and refine it in the future. Please feel free to contribute/provide feedback! 

## Contributing
Pull requests are welcome! For major changes, please open an issue first to discuss what you would like to change. Thanks for your interest!


