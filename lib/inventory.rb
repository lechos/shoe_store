#represents collection of shoes
class Inventory 
  attr_reader :all
  def initialize
    @all = []
  end

  def add(shoe)
    @all << shoe
  end

  def brand(searched_brand)
    @all.select { |shoe| shoe.brand == searched_brand }
  end 

  def sell(sold_shoe)
    if @all.include?(sold_shoe)
      @all.delete(sold_shoe)
    else 
      raise "shoe is not in inventory"
    end
  end


end







  # def change
  #   #enables user to modify table/add more inventory
  #   create_table :shoes do |t|
  #     t.string :size
  #     t.string :width
  #     t.string :brand
  #     t.string :type
  #     t.integer :price
  #     t.string :gender
  #     t.timestamps null: false
  #   end
  # end



