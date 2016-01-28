class Shoe

  attr_reader :size, :width, :brand, :type, :price, :gender

  def initialize(size, width, brand, type, price, gender)
    @size = size
    @width = width    #narrow, regular, wide, extra-wide
    @brand = brand    #asics, brooks, new balance, adidas 
    @type = type      #neutral, support, stability, minimalist
    @price = price    
    @gender = gender  #mens or women's
  end

end

