
class CashRegister 
  
  attr_accessor :discount, :total
  
  @item_list = []
  
  def initialize(discount=0)
  @total = 0
  @discount = discount
  end
  
  def add_item(title, price,quantity=1)
    @item_list.push(title)
    @total += price * quantity
  end
  
  def apply_discount
    if discount > 0
      @total = @total - (@total * discount/100)
      "After the discount, the total comes to $#{@total}."
    else "There is no discount to apply."
    end
  end
    
  def items 
    @item_list
  end
end