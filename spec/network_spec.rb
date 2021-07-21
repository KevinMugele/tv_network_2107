require './lib/network'
require './lib/show'
require './lib/character'

RSpec. describe Network do

  it "exists" do
    nbc = Network.new("NBC")

    expect(nbc).to be_a(Network)
  end

  it "has a name" do
    nbc = Network.new("NBC")

    expect(nbc.name).to eq("NBC")
  end

  it "has shows" do
    nbc = Network.new("NBC")

    expect(nbc.shows).to eq([])
  end

end
