class Reverser

  def self.reverse(input_word)
    reversed_word = ""
    word = input_word
    word.each_char { |character| reversed_word = character + reversed_word }
    reversed_word
  end
end

=begin

----------------------Learnings---------------------------------------
1. Local variable scope and block scoping ----
   a. Variables defined within a method are accessible to all blocks within that method and can also be modified within the block
   b. Scope shadowing = If a local variable defined within a method is redifned/reassigned within a block, block variable/even the parameters like in each/map block can temporarily shadow the local variables.
2. .each_char method ---- iterates over each character in a string and performs operations as specified within the block
3. .each method -- iterates over each element in an array and performs operations as specified within the block VS 
          .MAP method -- iterates over each element in an array and modifies each element as per the operation specified within the block and returns new collection/array
    NONE OF THEM MODIFIES ORIGINAL Array
    
=end