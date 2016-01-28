describe Inventory do 
  before :each do 
    @inventory = Inventory.new
    @shoe1 = Shoe.new(10, :regular, :asics, :neutral, 150.00, :mens)
  end

  it 'should return list of shoes in inventory' do 
    expect(@inventory.all).to be_an Array
  end

  it 'should allow shoe to be added to inventory' do 
    
    @inventory.add(@shoe1)
    expect(@inventory.all).to include @shoe1
  end

  it 'should return list of shoes of particular brand' do
     @inventory.add(@shoe1)
     expect(@inventory.brand(:asics)).to include @shoe1 
  end

  it 'should not return shoe of another brand' do 
    @inventory.add(@shoe1)
    expect(@inventory.brand(:nike)).not_to include @shoe1
  end

  it 'should remove sold shoes from inventory' do 
    @inventory.add(@shoe1)
    @inventory.sell(@shoe1)
    expect(@inventory.all()).not_to include @shoe1
  end

  it 'should not let non-existent shoe to be sold' do
    expect { @inventory.sell(@shoe1) }.to raise_error("shoe is not in inventory")
  end

  it 'should return list of shoes of particular style' do 
      @


end

#connect to database of inventory
#should be able to find data based on input (like doing a search)
#should be able to add new data to CSV or AR base (adds to array)
#