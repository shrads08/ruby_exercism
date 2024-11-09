=begin
Write your code for the 'Acronym' exercise in this file. Make the tests in
`acronym_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/acronym` directory.
=end
class Acronym

  def self.abbreviate(input)
    input_words = input.split(/\W+/)
    input_words.map { |word| word[0].upcase}.join
  end

end


=begin
-----------------------------------------------------LEARNINGS------------------------------------------------------
1. .chars method is used to split strings or sentences/phrases into characters . Example tagline = "Money is just another need; but Values is the oxygen of life". tagline.chars -> 
["M","o", "n", "e", "y", " ","i","s"," ","j","u","s","t"," ","a","n","o","t","h","e","r"," ","n","e","e","d"," ","b","u","t"," ","V","a",
 "l","u","e","s"," ","i","s"," ","t","h","e"," ","o","x","y","g","e","n"," ","o","f"," ","l","i","f","e"]
2. The .join method in Ruby is used to join the elements of an array into a single string, optionally inserting a separator between each element.
    For instance ---> array.join(separator)
=end