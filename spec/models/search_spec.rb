require 'rails_helper'

RSpec.describe Search, '#filter_by_name' do
  context "When creating a search" do
    searches = Search.filter_by_name('pikachu')
    it "if you sort it will have the name of" do
      expect(searches.name).to eq 'pikachu'
    end
  end
end
