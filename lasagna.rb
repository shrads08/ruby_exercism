class Lasagna
  EXPECTED_MINUTES_IN_OVEN = 40
  TIME_TAKEN_BY_A_LAYER = 2

  def remaining_minutes_in_oven(actual_minutes_in_oven)
   EXPECTED_MINUTES_IN_OVEN - actual_minutes_in_oven
  end

  def preparation_time_in_minutes(layers)
   layers * TIME_TAKEN_BY_A_LAYER
  end

  def total_time_in_minutes(number_of_layers:, actual_minutes_in_oven:)
   preparation_time_in_minutes(number_of_layers) + 
   actual_minutes_in_oven
  end
end


#-----------------learnings-------------------------------------
# 1. avoid using return keyword outside flow control
# 2. avoid using magic numbers in ruby , i.e. using a number (which is required repeatedly) , instead assign it to a constant.

#***MAGIC NUMBERS***

  #***In programming, "magic numbers" refer to numeric literals that     appear directly in code without explanation or meaning. These          numbers are considered "magic" because their significance is not       immediately obvious to someone reading the code, and they can be       confusing or misleading.***

#3. **Positional arguments vs Keyword arguments**
  # **#Positional args**
  
  # **def greet(name, age)**
  
  # **end**
  
  # **greet(’shrads’, 30)**
  
  # **here name and age parameters within the method definition are         positional/positional arguments since during the invoke, values        assigned (shrads, 30) will be alloted as per the position in           definiton.In such case order of parameters/arguments matter.**
  
  # **#Keyword arguments.**
  
  # **def greet(name:, age: )**
  
  # **end**
  
  # **greet(name: ‘shrads’, age:30)
  # here name and age parameters within method definition are not           positional as they have been defined/symbolized with keywords           name: and age:, so during invoke, the values are assigned to           particular keywords like name: ‘shrads’, age: 30. In such case         order of paramters/arguments is not a concern, and is more             readable.Especially useful when the parameter list is long to           avoid any mismatch or error.**

# 4. Implicit return vs Explicit return
      # Implicit return - last evaluated expression is automatically           returned
  
       # explicit return - using return keyword to return from a                 method. can be used when required to do early return.