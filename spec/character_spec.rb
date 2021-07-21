require './lib/character'

RSpec.describe Character do
  it "exists" do
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})

    expect(kitt).to be_a(Character)
  end

  it "has a name" do
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})

    expect(kitt.name).to eq("KITT")
  end

  it "has a name" do
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})

    expect(kitt.name).to eq("KITT")
  end


end
