class Parcel

  define_method(:initialize) do |height, width, length, weight, distance|
    @height=height
    @width=width
    @length=length
    @weight=weight
    @distance=distance
  end

  define_method(:volume) do
    @parcel_volume=@height.*@width.*@length
  end

  define_method(:cost_to_ship) do
    cost = @parcel_volume.*5.+@distance.*2./100
  end

end
