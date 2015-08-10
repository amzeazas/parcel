require('rspec')
require('parcel')

describe(Parcel) do
  describe("#cost_to_ship") do
    it("returns the volume of a given parcel") do
      test_parcel = Parcel.new(2, 2, 2, 2)
      expect(test_parcel.cost_to_ship()).to(eq(8))
    end
  end
end
