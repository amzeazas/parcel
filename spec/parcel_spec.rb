require('rspec')
require('parcel')

describe(Parcel) do
  describe("#cost_to_ship") do
    # it("returns the volume of a given parcel") do
    #   test_parcel = Parcel.new(2, 2, 2, 2)
    #   expect(test_parcel.cost_to_ship()).to(eq(8))
    # end
    it("returns the cost of shipping based on speed, distance, volume and weight") do
      test_parcel = Parcel.new(2, 2, 2, 2)
      expect(test_parcel.cost_to_ship(100, 5)).to(eq(30))
    end
  end
end
