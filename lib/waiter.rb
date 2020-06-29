#require 'pry'
class Waiter

    attr_accessor :name, :yrs_experience
  
    @@all = []
  
    def initialize(name, yrs_experience)
      @name = name
      @yrs_experience = yrs_experience
      @@all << self
    end
  
    def self.all
      @@all
    end
  
    def new_meal(customer, total, tip=0)
      Meal.new(self, customer, total, tip)
    end
  
    def meals
      Meal.all.select do |meal|
        meal.waiter == self 
      end
    end

    def frequent_customer
      Customer.all.mode do |frequent_customer| 
        frequent_customer.waiter = self 
    end 
  end 
      
  
      def best_tipper
        best_tipped_meal = meals.max do |meal_a, meal_b|
          meal_a.tip <=> meal_b.tip
        end
      
        best_tipped_meal.customer
      end
  sam = Customer.new("Sam", 27)
  pat = Waiter.new("Pat", 2)
  alex = Waiter.new("Alex", 5)
  kyle = Customer.new("Kyle", 30)
  
  end