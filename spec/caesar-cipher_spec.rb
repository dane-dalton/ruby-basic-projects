require './caesar-cipher'

describe '#caesar_cipher' do
  it "returns an encrypted word" do
    expect(caesar_cipher("Dane", 1)).to eql("Ebof")
  end

  it "returns the correct encryption when shifting backwards" do
    expect(caesar_cipher("Dane", -1)).to eql("Czmd")
  end
end