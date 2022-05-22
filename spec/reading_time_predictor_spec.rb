# require "reading_time_predictor"

# RSpec.describe "reading_time_predictor method" do
#     context "when given an empty string will return true" do
#         it "returns string" do
#             result = reading_time_predictor("")
#             expect(result).to eq "0 minute read."
#         end
#     end

#     context "when given a text under 200 words will return 1 minute read" do
#         it "returns 1 minute read" do
#             result = reading_time_predictor("one " * 20)
#             expect(result).to eq "1 minute read."
#         end
#     end

#     context "when given a text of 1122 words it will return 6 minute read" do
#         it "returns 6 minute read" do
#             result = reading_time_predictor("one " * 1122)
#             expect(result).to eq "6 minute read."
#         end
#     end

#     context "when given a text of 300 words it will return 2 minute read" do
#         it "returns 2 minute read" do
#             result = reading_time_predictor("one " * 300)
#             expect(result).to eq "2 minute read."
#         end
#     end

#     context "when given nothing in the string it will fail and return you've not input any text" do
#         it "fails and returns you've not input any text." do
#             result = reading_time_predictor("")
#             expect{result}.to raise_error "You've not input any text."
#         end
#     end

# end
