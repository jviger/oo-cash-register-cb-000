
class CashRegister 
  
  attr_accessor :discount, :total
  
  def initialize(discount=0)
  @total = 0
  @discount = discount
  end
  
  def add_item(title, price,quantity=1)
    @total += price * quantity
  end
  
  def apply_discount
      @total -= discount
      @total
  end
    

end