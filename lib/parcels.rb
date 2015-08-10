require('pry')

class Parcel

  define_method(:initialize) do |height, width, length, weight, distance, delivery_type, gift_mode|
    @height=height
    @width=width
    @length=length
    @weight=weight
    @distance=distance
    @delivery_type=delivery_type
    @gift_mode=gift_mode
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

    cost

    if @gift_mode == "gift"
      cost = cost + ( @width * @length * 2 + @width * @height * 2 + @length * @height * 2)
    elsif @gift_mode == "super_gift"
      cost = cost + ( @width * @length * 2 + @width * @height * 2 + @length * @height * 2) *2
    else
      cost
    end

  end

end
