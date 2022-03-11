require "todo_checker"

RSpec.describe "todo_checker method" do
    
    context "it returns true when input includes todo" do
        it "returns true" do
            result = todo_checker("todo - washing")
            expect(result).to eq true
        end
    end

    context "it returns false when input does not include todo" do
        it "returns false" do
            result = todo_checker("I need to go shopping")
            expect(result).to eq false
        end
    end

    context "it returns false if given an empty string" do
        it "returns false" do
            result = todo_checker("")
            expect(result). to eq false
        end
    end

end

