
class CashRegister 
  
  attr_accessor :discount
  
  def initialize(discount=0)
  @total = 0
  @discount = discount
  end
  
  def self.total
    @total
  end
  

end