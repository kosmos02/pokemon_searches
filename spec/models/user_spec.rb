require 'rails_helper'

RSpec.describe User, '#intialize' do
  context "When creating a user it" do
    user = User.create(username: "Bob", password: "elsa5")
    it "will have a username of" do
        expect(user.username).to eq "Bob"
    end
    it "will have a password of" do
        expect(user.password).to eq 'elsa5'
    end
  end
end
