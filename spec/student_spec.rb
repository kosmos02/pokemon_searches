require_relative '../lib/student'

RSpec.describe Student, "#initialize" do
    context "new student" do
        student = Student.new
        it "should have lots of energy" do
            expect(student.energy).to eq 100
        end
        it "should have no points" do
            expect(student.points).to eq 0
        end
    end
end

RSpec.describe Student, "#go_to_school" do
        
    context "given that it goes to school it" do
        student = Student.new
        student.go_to_school
        it "should lose energy" do
            expect(student.energy).to be < 100
        end
        it "should gain points" do
            expect(student.points).to be > 0
        end
    end

end