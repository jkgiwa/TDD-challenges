require 'encode'

RSpec.describe "encode method" do
    it "takes an input and encodes it" do
        result = encode("theswiftfoxjumpedoverthelazydog", "secretkey")
        expect(result).to eq "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
    end
end

RSpec.describe "decode method" do
    it "takes an encoded input and decodes it" do
        result = decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
        expect(result).to eq "theswiftfoxjumpedoverthelazydog"
    end
end

