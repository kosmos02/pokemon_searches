require 'rails_helper'

RSpec.describe Search, '#filter_by_name' do
  context "When creating a search" do
    Search.create(name: 'pikachu')
    Search.create(name: 'ekans')
    Search.create(name: 'squirtle')
    result = Search.filter_by_name('pikachu')
    it "if you sort it will have the name of" do
      expect(result[0].name).to eq 'pikachu'
    end
  end
end

RSpec.describe SearchesController, :type => :controller do
  describe 'validates uniqueness' do
    Search.create(name: 'pikachu')
    Search.create(name: 'ekans')
    Search.create(name: 'squirtle')
    it "raises an exception if more than one" do
      expect(Search.create(name: 'pikachu')).to raise('Already searched')
    end
  end
end
