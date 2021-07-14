class Student
    attr_reader :energy, :points

    def initialize
        @energy = 100
        @points = 0
    end

    def go_to_school
        @energy -= 10
        @points += 10
    end
end