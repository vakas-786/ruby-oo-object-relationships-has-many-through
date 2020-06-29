
class Meal

    attr_accessor :waiter, :customer, :total, :tip
  
    @@all = []
  
    def initialize(waiter, customer, total, tip=0)
      @waiter = waiter
      @customer = customer
      @total = total
      @tip = tip
      @@all << self
    end
  
    def self.all
      @@all
    end
  
  end
#joiner method is SSOT for relationships between customer and waiter 
  sam = Customer.new("Sam", 27)
  pat = Waiter.new("Pat", 2)
  alex = Waiter.new("Alex", 5)
  kyle = Customer.new("Kyle", 30)
  pat = Waiter.new("Pat", 2)