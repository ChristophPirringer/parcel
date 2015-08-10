require('rspec')
require('parcels')

describe(Parcel) do

  describe("#volume") do
    it("returns 25 for the volume of a 5 inch cubic package") do
      test_parcel = Parcel.new(5, 5, 5, 10, 10, "regular_delivery")
      expect(test_parcel.volume()).to(eq(125))
    end
  end

  describe("#cost_to_ship") do
    it("returns 125 for the cost to ship a 5 inch cubic package of 10 lb for 10 miles") do
      test_parcel = Parcel.new(5, 5, 5, 10, 10, "regular_delivery")
      expect(test_parcel.cost_to_ship()).to(eq(125))
    end


    it("returns 250 for the cost to ship a 5 inch cubic package of 10 lb for 10 miles and fast delivery") do
      test_parcel = Parcel.new(5, 5, 5, 10, 10, "fast_delivery")
      expect(test_parcel.cost_to_ship()).to(eq(250))
    end
  end


end
