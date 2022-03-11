require 'piggy_bank'

RSpec.describe PiggyBank do

    it "initially returns an empty array" do
        piggy_bank = PiggyBank.new
        expect(piggy_bank.report).to eq []
    end

    it "can add a number into an array" do
        piggy_bank = PiggyBank.new
        piggy_bank.add(20)
        result = piggy_bank.report
        expect(result).to eq [20]
    end

    it "returns cling if it has coins in it" do
        piggy_bank = PiggyBank.new
        result = piggy_bank.report.cling
        expect(result).to eq "*cling*"
    end
end