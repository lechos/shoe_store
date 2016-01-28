describe Shoe do 
  before :each do   #domain specific language
    @shoe = Shoe.new(10, :regular, :asics, :neutral, 150.00, :mens)
  end 
  it 'should have a size' do 
    expect(@shoe.size).to eq(10)
  end

  it 'should have a width' do 
    expect(@shoe.width).to eq(:regular)
  end 

  it 'should have a brand' do 
    expect(@shoe.brand).to eq(:asics)
  end

  it 'should have a type' do 
    expect(@shoe.type).to eq(:neutral)
  end 

  it 'should have a price' do 
    expect(@shoe.price).to eq(150.00)
  end

  it 'should have a gender' do 
    expect(@shoe.gender).to eq(:mens)
  end
end

#find out if shoe exists in inventory
#list all by size, width, brand, type
#might want to have class for mens, class for womens and corresponding widths