class Parcel
  define_method(:initialize) do |length, width, depth, weight|
    @length = length
    @width = width
    @depth = depth
    @weight = weight
  end

  define_method(:cost_to_ship) do
    volume = @length.*(@width).*(@depth)
  end
end
