class Parcel
  define_method(:initialize) do |length, width, depth, weight|
    @length = length
    @width = width
    @depth = depth
    @weight = weight
  end

  define_method(:cost_to_ship) do |speed, distance|
    @speed = speed
    @distance = distance
    volume = @length.*(@width).*(@depth)

    if volume < 11
      volume_cost = 5
    elsif volume >= 11 && volume < 21
      volume_cost = 10
    else
      volume_cost = 15
    end

    if @weight < 11
      weight_cost = 5
    elsif @weight >= 11 && @weight < 21
      weight_cost = 10
    else
      weight_cost = 15
    end

    if @distance < 501
      distance_cost = 5
    elsif @distance >= 501 && @distance < 1001
      distance_cost = 10
    else
      distance_cost = 15
    end

    if @speed < 8
      speed_cost = 5
    elsif @speed >= 8 && @speed < 15
      speed_cost = 10
    else
      speed_cost = 15
    end

    final_cost = volume_cost.+(weight_cost).+(distance_cost).+(speed_cost)
  end
end
