class Series
  def initialize(input_string)
    raise ArgumentError if input_string.empty?
    @input_string = input_string
  end

  def slices(slice_length)
    # Validate slice_length
    raise ArgumentError if slice_length <= 0 || @input_string.length < slice_length

    # Generate slices using range and slice
    (0..@input_string.length - slice_length).each.with_object([]) do |index, array_of_slices|
      array_of_slices << @input_string.slice(index, slice_length)
    end
  end
end

=begin
-----------------------------Learnings--------------------------------------------------
# .step method can be used like an increment operator when iterating through a range, or elements in an array/string. For eg:
  for i in (0..10).step(2) do
    puts i
  end
  This would print  ---> 0,2,4,6,8,10
# nil?	Checks if the object is nil.	All objects. eg 1: str = nil; str.nil? #true

  empty?	Checks if a collection (string, array, hash) has no elements or characters. Strings, Arrays, Hashes. Eg 2 : str = ''; arr=[] str.empty? && arr.empty? #true
  
  blank?	Checks if an object is nil, false, empty, or whitespace-only (Rails-specific). Strings, Arrays, Hashes, Numbers (Rails). Eg 3 : nil.blank? && "".blank? && " ".blank? &&      false.blank? && [].blank? && {}.blank? #true
  
  present?	Opposite of blank? — checks if an object is not nil, not empty, and not whitespace-only (Rails-specific).	Strings, Arrays, Hashes (Rails). Eg 3 will return false   output
# Summary of .slice:
  Array#slice(index): Returns the element at the given index.
  Array#slice(start_index, length): Returns a subarray starting from start_index with length elements.
  Array#slice(range): Returns a subarray for the given Range of indices.
  String#slice(index): Returns a substring starting at the specified index.
  String#slice(start_index, length): Extracts a substring starting from start_index with length characters.
  String#slice(range): Extracts a substring for the given range.
  
  Differences Between slice and slice!:
  slice: Returns a new array (or substring) without modifying the original.
  slice!: Modifies the original array or string by removing the sliced portion and returns it.
# In Ruby, attr_reader, attr_writer, and attr_accessor are used to create getter and setter methods for instance variables so that you can access (read or modify) those instance       variables from outside the class. Without these, instance variables would be private and   inaccessible outside the class.
  Why Use attr_reader, attr_writer, and attr_accessor?
  Encapsulation: These methods help you encapsulate your class's internal data (instance variables) and control how they are accessed or modified.
  Less boilerplate code: Instead of manually writing getter and setter methods (e.g., def name; @name; end and def name=(value); @name = value; end), attr_reader, attr_writer, and   attr_accessor save you time and make your code more concise.
  Control access: You can limit how the data is accessed or modified from outside the class:
  Use attr_reader to make an instance variable read-only.
  Use attr_writer to make an instance variable write-only.
  Use attr_accessor to make an instance variable both readable and writable.
# Enumerable is a Ruby module that provides a collection of powerful methods for iterating over and manipulating collections (e.g., arrays, hashes, ranges).
  It includes methods like each, map, select, reduce, find, and many others to simplify working with collections.
  To use Enumerable in a custom class, you must define the each method, and then you can take advantage of all the other Enumerable methods automatically.
# Method parameters are local to the method where they are defined.
  Block parameters (i.e., variables passed into blocks) are local to the block itself, not accessible outside the block.
  Variables defined inside the method (outside the block) are generally accessible inside the block, since blocks are closures and they capture the surrounding context when they     are defined.

=end
