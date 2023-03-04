require "gemzinha"

RSpec.describe Gemzinha do
  it "broccoli is gross" do
    expect(Gemzinha::Food.portray("Broccoli")).to eql("Gross!")
  end

  it "anything else is delicious" do
    expect(Gemzinha::Food.portray("Not Broccoli")).to eql("Delicious!")
  end

  it "pluralizes a word" do
    expect(Gemzinha::Food.pluralize("Tomato")).to eql("Tomatoes")
  end
end
