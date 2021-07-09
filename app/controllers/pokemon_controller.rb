class PokemonController < ApplicationController

    def index
        response = Faraday.get("https://pokeapi.co/api/v2/pokemon?limit=1118")
        result= JSON.parse(response.body)

        render json: result

    end

    # def show_specific_pokemon 
    #     params = params[:query]
    #     response = Faraday.get("https://pokeapi.co/api/v2/pokemon?limit=1118&name=#{params}")
    #     result= JSON.parse(response.body)

    #     render result
    # end

    # private

    # def find_pokemon name
    #     res

    # end

end
