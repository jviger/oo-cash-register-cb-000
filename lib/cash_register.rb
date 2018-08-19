
class CashRegister 
  
  attr_accessor :discount, :total, :items
  
  @item_list = []
  
  def initialize(discount=0)
  @total = 0
  @discount = discount
  @items = []
  end
  
  def add_item(title, price,quantity=1)
    quantity.times do |x|
      @items.push(x)
    end
    @total += price * quantity
  end
  
  def apply_discount
    if discount > 0
      @total = @total - (@total * discount/100)
      "After the discount, the total comes to $#{@total}."
    else "There is no discount to apply."
    end
  end
 
end