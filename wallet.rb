class Wallet
 attr_accessor :amount

  def initialize(amount)
    @amount = amount
  end

  def subtract(amount_to_subtract)
    @amount -= amount_to_subtract
  end

  def add(amount_to_add)
    @amount += amount_to_add
  end
 
end
