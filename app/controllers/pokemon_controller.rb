class PokemonController < ApplicationController

    def index
        response = Faraday.get("https://pokeapi.co/api/v2/pokemon?limit=1118")
        result= JSON.parse(response.body)

        render json: result
    end

    # def show
    #     @params = params[:id]
    #     response = Faraday.get("https://pokeapi.co/api/v2/pokemon/#{@params}")
    #     result= JSON.parse(response.body)

    #     render result
    # end

    # private

    # def find_pokemon name
    #     res

    # end

end
