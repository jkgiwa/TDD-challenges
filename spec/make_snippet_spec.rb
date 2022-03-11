require "make_snippet"

RSpec.describe "make_snippet method" do
  it "takes the string and it turns into an array" do
		make_snippet("my favourite top has stripes on it")
		result = @str
  	expect(result).to eq ["my", "favourite", "top", "has", "stripes", "on", "it"]
  end

	it "slices the string and keep five elements" do
		make_snippet("my favourite top has stripes on it")
		result = @str.slice(0,5)
		expect(result).to eq ["my", "favourite", "top", "has", "stripes"]
	end

	it "it turns 5 elements in the array into a string" do
		make_snippet("my favourite top has stripes on it")
		expect(selected_five = @str.slice(0, 5).join(" ")).to eq "my favourite top has stripes"
	end

	it "returns my favourite top has stripes..." do
		make_snippet("my favourite top has stripes on it")
		selected_five = @str.slice(0, 5).join(" ")
		expect(selected_five + "...").to eq "my favourite top has stripes..."
	end 

end