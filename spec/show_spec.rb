require './lib/character'
require './lib/show'

RSpec.describe Show do
  it "exists" do
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])


    expect(knight_rider).to be_a(Show)
  end
end 
