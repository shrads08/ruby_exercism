class BoutiqueInventory

  CHEAP = 0...30
  private_constant :CHEAP

  private
  
  attr_accessor :items

  def initialize(items)
    self.items = items
  end

  public
  
  def item_names
    items.map { | item | item[:name] }.sort
  end

  def cheap
    items.select { | item | CHEAP.cover?(item[:price]) }
  end

  def out_of_stock
    items.select { | item | item[:quantity_by_size].empty? }
  end

  def stock_for_item(name)
    items.find { | item | item[:name] == name }.dig(:quantity_by_size)
  end

  def total_stock
    items.sum { | item | item[:quantity_by_size].values.sum }
  end

end


=begin
---------------------------------------------------------------Learnings------------------------------------------------------------------------------------
1. It's always better to use attributes instead of instance variables as it improves encapsulation, flexibility and makes code more consistent, maintainable.
2. Let's say we need to log a message each time items is accessed so we can do this by simply setting this in getter method --> 
    def items
      puts "Accessing items"
      @items
    end
3. The .flatten method in Ruby is used to transform nested arrays or arrays of arrays into a single, one-dimensional array by removing one level of nesting. Essentially, it collapses nested arrays into a single array.
    nested_array = [[1, 2], [3, 4], [5, 6]]
    flattened_array = nested_array.flatten
    puts flattened_array.inspect  # Output: [1, 2, 3, 4, 5, 6]
4. .reduce => @items.reduce(0) { |sum, item| sum + item[:quantity_by_size].values.sum }
    here .reduce accomplishes a similar task as the sum method, but it's a bit more explicit in its implementation.
    a. It will iterate over each item in @items.
    b. Starts with an initial value of 0.
    c. For each item, it adds the sum of item[:quantity_by_size].values.sum to the accumulator (sum), which accumulates the total sum.
    d. Finally, it returns the accumulated sum.
5. Range#include? Method
    The include? method checks if a value is a member of the range. This method considers all the values in the range, which can be more computationally expensive for large ranges of non-numeric values.
  Range#cover? Method
    The cover? method checks if a value is within the range, but it does so by comparing the endpoints of the range rather than iterating through each value. This method is generally faster and more suitable for large ranges or ranges of numeric values.
=end
