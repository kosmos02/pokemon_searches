# README

# Pokemon Searches #

This API uses a third party API from https://pokeapi.co/ to fetch all the pokemon. It saves the searches into a searches database if it is a unique search. Each search has an attribute of "name". A user has the option to call on sort and filter methods to sort and filter the searches table. A user can also create a username and password for themselves and can be logged in.

There is testing available for the user and searches models.

The easiest way for the user to interact with the app is with Postman. Although, you can search with GET requests through the deployed app on Heroku.

To run locally run your rails server and use "http://localhost:3000" and use the endpoints mentioned below

## Notable Gems ##

* pg
* jwt
* rspec-rails
* rails-helper
* faraday
* kaminari
* bcrypt

### Get all Pokemon ###

make a GET request to the url with the endpoint /pokemon

### Searches ###

### Index ###

Make a GET request to the endpoint with /searches to view all unique searches made

### SHOW ###

Make a GET request with the endpoint /searches/:id to find the search with the indicated id

### CREATE ###

To create a search, make a POST request with the endpoint /searches. Make sure the headers have a key of "Content-Type" and a value of "application/json". In the body, make sure you select raw -> JSON and create your JSON body. Such as:

```
{
    "name": "sandslash"
}
```

send the request to create the search.

### DELETE ###

To delete a search entry, make a DELETE request with the endpoint /searches/:id to delete the indicated search entry

### UPDATE ###

To update an entry, make a PUT request to the endpoint /searches/:id to update that entry

### Create a User ###

To create a user, make a POST request to the endpoint /users. Make sure the headers have a key of "Content-Type" and a value of "application/json". Make a body with your username and password.

```
{
    "username": "Britney Spears"
    "password": "Oops
}
```
### To login and authenticate ##

Make a POST request to the enpoint /login with headers with the key "Content-Type" and a value of "application/json". The body should look something liek this:

```
{
    "user": {
        "username": "Britney Spears",
        "password": "Oops"
    }
}
```

### To Use the Sort and Filter Methods ###

You can sort the searches database by name in ascending order by using 'rails c' to get into your console locally. Use Search.sort_by_name to sort the searches.

To filter and get a specific pokemon by name you can type in Search.filter_by_name("name_of_pokemon")

