require_relative "../script"

describe "#alphabet?" do
  context "when a valid char is passed" do
    subject(:valid_char) { String.new("a") }
    it "returns true" do
      expect(alphabet?(valid_char)).to be true
    end
  end

  context "when an invalid char is passed" do
    subject(:invalid_char) { String.new("!") }
    it "returns false" do
      expect(alphabet?(invalid_char)).to be false
    end
  end
end
