require('rspec')
require('parcels')

describe(Parcel) do

  describe("#volume") do
    it("returns 25 for the volume of a 5 inch cubic package") do
      test_parcel = Parcel.new(5, 5, 5, 10, 10)
      expect(test_parcel.volume()).to(eq(125))
    end

  end

end
