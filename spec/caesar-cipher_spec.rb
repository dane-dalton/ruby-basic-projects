require './caesar-cipher'

describe '#caesar_cipher' do
  it "returns an encrypted word" do
    expect(caesar_cipher("Dane", 1)).to eql("Ebof")
  end

  it "returns the correct encryption when shifting backwards" do
    expect(caesar_cipher("Dane", -1)).to eql("Czmd")
  end
end

describe '#shift_char' do
  it "shifts a character" do
    expect(shift_char("a", 2)).to eql("c")
  end

  it "shifts capitalized characters" do
    expect(shift_char("A", 2)).to eql("C")
  end

  it "shifts backwards" do
    expect(shift_char("a", -2)).to eql("y")
  end

  it "shifts capitalized characters backwards" do
    expect(shift_char("A", -2)).to eql("Y")
  end
end