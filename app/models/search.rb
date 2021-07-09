class Search < ApplicationRecord
    validates :name, uniqueness: true

    def self.sort_by_name
        order(:name)
    end

    def self.filter_by_name name
        select{|pokemon| pokemon.name == name}
    end


end
