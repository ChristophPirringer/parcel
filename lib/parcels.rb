class Parcel

  define_method(:initialize) do |height, width, length, weight, distance, delivery_type|
    @height=height
    @width=width
    @length=length
    @weight=weight
    @distance=distance
    @delivery_type=delivery_type
  end

  define_method(:volume) do
    parcel_volume=@height.*@width.*@length
  end

  define_method(:cost_to_ship) do
    if @delivery_type == "regular_delivery"
      cost = @height.*@width.*@length.*@weight.*@distance.*0.01
    else
      cost = @height.*@width.*@length.*@weight.*@distance.*0.01.*2
    end

  end

end
