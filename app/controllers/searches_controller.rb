class SearchesController < ApplicationController

    def index
        searches = Search.all

        render json: searches
    end

    def show
        search = Search.find(params[:id])

        render json: search   
    end

    def create
        search = Search.new(search_params)

        if search.valid?
            search.save
            render json: {search: search, messages: "Created"}, status: :created
        else 
            render json: {errors: search.errors.full_messages[0]}, status: :unprocessable_entity
        end
    end

    def update
        search = Search.find(params[:id])
        search.update(search_params)

        render json: {search: search, message: "Updated search"}
    end

    def destroy
        search = Search.find(params[:id])
        search.destroy

        render json: {search: search, message: "Deleted"}
    end

    private

    def search_params
        params.require(:search).permit(:name)
    end

end
