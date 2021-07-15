class PokemonController < ApplicationController

    def index
        response = Faraday.get("https://pokeapi.co/api/v2/pokemon?limit=1118")
        result= JSON.parse(response.body)

        render json: result
    end

end
