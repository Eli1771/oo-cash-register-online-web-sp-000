class CashRegister 
  attr_accessor :total, :discount, :last_transaction, :items

<<<<<<< HEAD
  def initialize(discount = 0.0) 
    @total = 0.0
    @discount = discount.to_f
=======
  def initialize(discount = 0) 
    @total = 0.0
    @discount = discount
>>>>>>> c701c44147971d80b8036140e5850c8026dea2c8
    @items = []
  end 
  
  def add_item(item, price, quantity = 1) 
    @total += price * quantity
    quantity.times do 
      @items << item 
    end 
<<<<<<< HEAD
    @last_transaction = price * quantity
  end 
  def apply_discount 
    if @discount > 0
      @total = @total-(@total*(@discount/100))
      @total = @total.to_i if @total/@total.floor == 1.0
      return "After the discount, the total comes to $#{@total}."
    else 
      return "There is no discount to apply."
    end 
  end 
  def void_last_transaction 
    @total -= @last_transaction
=======
  end 
  def apply_discount 
    if @discount > 0
      @total = @total - (@total * (@discount / 100)) 
      puts "After the discount, the total comes to $#{@total}."
    else 
      puts "There is no discount to apply."
    end 
  end 
  def void_last_transaction 
    
>>>>>>> c701c44147971d80b8036140e5850c8026dea2c8
  end 
end 