module Helpers
  BASE_HITPOINTS = 10

  def attributes
    %i[strength dexterity constitution intelligence wisdom charisma]
  end
end

# dnd_character.rb
class DndCharacter
  include Helpers  

  attr_reader :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :hitpoints

  def initialize
    # Generate random ability scores for each attribute
    @strength = roll_ability_score
    @dexterity = roll_ability_score
    @constitution = roll_ability_score
    @intelligence = roll_ability_score
    @wisdom = roll_ability_score
    @charisma = roll_ability_score

    # Calculate hitpoints based on Constitution modifier
    @hitpoints = BASE_HITPOINTS + self.class.modifier(@constitution)
  end

  # Method to roll a 4d6 and calculate the ability score
  def roll_ability_score
    dice = Array.new(4) { rand(1..6) }
    dice.sort.drop(1).sum  # Drop the lowest and sum the remaining 3 dice
  end

  # Class method to calculate the modifier for a given score
  def self.modifier(score)
    (score - 10) / 2
  end
end

=begin
1. drop(n) method is used to remove n elements from the beginning of a sorted array.
2. INSTANCE METHODS -- are the methods defined inside a class and are called on instances of the class. They have accesss to the instance states i.e. @instance_variables. They cannot directly access class methods, unless explicitly called
eg------------
def greet
    # Calling a class method from an instance method
    greeting = self.class.create_from_name(@name)
    "Hello, #{greeting}!"
  end

  # Class method
  def self.create_from_name(name)
    # Returns a new instance of Person with the given name
    "#{name}, from the class method"
  end
end
This demonstrates that an instance method can indeed call a class method directly by using self.class.method_name, where self.class gives you access to the class of the instance.

Why Use self.class.method_name Instead of Direct Class Reference?
You could use either self.class.method_name or ClassName.method_name to call a class method within an instance method, but the difference lies in polymorphism and flexibility:

self.class.method_name: This approach is more flexible and polymorphic. If you subclass the class, self.class will refer to the subclass (not the parent class). This ensures that the correct class method is called, even if the class is subclassed.

ClassName.method_name: This approach is more rigid. It will always refer to the parent class, regardless of whether the code is executed in a subclass.

For most scenarios, it's better to use self.class.method_name because it allows the code to work correctly even if the class is subclassed.

Example of Polymorphism with self.class.method_name:

class Product
  def self.calculate_tax(price)
    price * 0.1
  end

  def initialize(name, price)
    @name = name
    @price = price
    @tax = self.class.calculate_tax(price)  # Uses self.class to get the correct method        for subclass
  end

  def display
    puts "#{@name} costs #{@price} dollars. Tax: #{@tax}."
  end
end

class PremiumProduct < Product
  def self.calculate_tax(price)
    price * 0.2  # Different tax rate for premium products
  end
end

# Create a regular product
product = Product.new("Laptop", 1000)
product.display  # 10% tax

# Create a premium product
premium_product = PremiumProduct.new("Luxury Phone", 2000)
premium_product.display  # 20% tax
Explanation:
In this case, if we use self.class.calculate_tax(price), it will call the correct calculate_tax method for the class of the object, whether it’s Product or PremiumProduct.
If we used Product.calculate_tax(price), it would always use the method defined on the Product class, even for instances of PremiumProduct.

Laptop costs 1000 dollars. Tax: 100.0.
Luxury Phone costs 2000 dollars. Tax: 400.0.


3. CLASS METHODS -- are the methods defined inside a class and are called on the class itself. They don't require an instance of the class to be invoked. They don't have access to the @instance_variables. Instead of working with instance variables, class methods generally work with class variables or perform operations that are not specific to individual objects, like counting total instances of car object for Car class. They are defined using self keyword, like self.modifier and will be accessed via classname like DnDCharacter.modifier(4). Class methods cannot directly access instance methods unless an instance is explicitly created within the class method.
   eg:
   def self.display_description(make, model)
     # Creating an instance of the class within the class method
     car_instance = new(make, model)
     # Calling the instance method on the created instance
     car_instance.description
   end
