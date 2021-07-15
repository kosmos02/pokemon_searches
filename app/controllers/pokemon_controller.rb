class PokemonController < ApplicationController

    def index
        response = Faraday.get("https://pokeapi.co/api/v2/pokemon?limit=1118")
        result= JSON.parse(response.body)

        render json: result
    end

    # def show_pokemon name
    #     # @params = params[:name]
    #     # response = Faraday.get("https://pokeapi.co/api/v2/pokemon/#{@params}")
    #     # result= JSON.parse(response.body)

    #     # render result

    #     response = Faraday.get("https://pokeapi.co/api/v2/pokemon/")
    #     result = JSON.parse(response.body)

    #     featured_pokemon = result.results.find{|pokemon| pokemon.name == name}

    #     render json: featured_pokemon



    # end

    # private

    # def find_pokemon name
    #     res

    # end

end
