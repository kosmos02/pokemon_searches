class Car
    attr_reader :fuel, :trips

    def initialize 
        @fuel = false
        @trips = 0

    end

    def do_trip
        @trips += 1
    end
end