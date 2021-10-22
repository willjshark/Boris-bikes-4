require_relative "../lib/bike"

describe Bike do
  it {should respond_to (:working)}
  it "should be able to be broken" do
    bike = Bike.new(false)
    expect(bike.working).to eq false
  end
end