require_relative "../lib/car"

RSpec.describe Car, "#do_trip" do
    context "given a new car" do
        car = Car.new
        it "should have no fuel" do
            expect(car.fuel).to be false
        end
    end
    context "given a new trip" do 
        car = Car.new
        car.do_trip
        it "should have added a trip" do
            expect(car.trips).to be > 0
        end
    end
end