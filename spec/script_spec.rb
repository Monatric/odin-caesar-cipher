require_relative "../script"

describe "Caesar Cipher" do
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

  describe "#substitute_letter" do
    context "when shift_sum does not exceed the max value of dictionary" do
      subject(:low_value_letter) { "b" }
      subject(:low_value_number) { 2 }
      it "returns a letter without counting from A" do
        new_letter = substitute_letter(low_value_letter, low_value_number)
        expect(new_letter).to eq("d")
      end
    end

    context "when shift_sum exceeds the max value of dictionary" do
      subject(:high_value_letter) { "x" }
      subject(:high_value_number) { 5 }
      it "returns a letter without counting from A" do
        new_letter = substitute_letter(high_value_letter, high_value_number)
        expect(new_letter).to eq("c")
      end
    end
  end
end
