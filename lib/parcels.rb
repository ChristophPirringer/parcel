class Parcel

  define_method(:initialize) do |height, width, length, weight, distance|
    @height=height
    @width=width
    @length=length
    @weight=weight
    @distance=distance
  end

  define_method(:volume) do
    parcel_volume=@height.*@width.*@length
  end

  define_method(:cost_to_ship) do
    cost = @height.*@width.*@length.*@weight.*@distance.*0.01
  end

end
