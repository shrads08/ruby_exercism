module SavingsAccount
  
  def self.interest_rate(balance)
    if balance >=0 && balance < 1000
      rate = 0.5
    elsif balance >= 1000 && balance < 5000
      rate = 1.621
    elsif balance >= 5000
      rate = 2.475
    else
      rate = 3.213
    end
    rate
  end

  def self.annual_balance_update(balance)
    rate = interest_rate(balance)
    amount = (balance * rate)/100
    updated_balance = balance + amount
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    years = 0
    while current_balance < desired_balance
        current_balance = annual_balance_update(current_balance)
        years += 1
    end
    years
  end

end
#------------------------------Learnings-------------------------------------
# 1. **Module** - a collection of methods, constants, and classes that can be used by other modules.
# 2. Helps in encapsulating related pieces of functionality into a single unit.
# 3. Promotes DRY principle, incorporating code reusability.
# 4. Allows usage of Mixins. 
# 5. Can also be used to define constants within a specific namespace, preventing them from polluting the global namespace and ensuring their availability only where needed.
# 6. Can have both instance methods and class methods
# 7. class methods can be called directly on module example SavingsAccount.years_before_desired_balance(200, 400)
# 8. To call instance methods need to include the module in a particular class using include keyword and then using the instance of the class instance methods of module can be called.

# above code needs improvisation...........