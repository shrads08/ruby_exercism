class HighScores

  attr_reader :scores

  def initialize(scores)
    @scores = scores
  end

  def latest
    @scores.last
  end

  def personal_best
    @scores.max
  end

  def personal_top_three
    @scores.max_by(3){ |score| score }
  end

  def latest_is_personal_best?
    @scores.last.eql?(@scores.max)
  end
end

=begin
---------------------------Learning------------------------------
1. max_by(n) works by scanning the array just once, maintaining a list of the top n values
found so far, and efficiently returning them. It doesn't perform a full sort, making it faster and more memory efficient than sort.
2. Internally it uses an optimized approach similar to a heap, where it continually updates the list of top n elements as it iterates through the array.
3. It iterates through the array and compares each element, based on criteria given in block; with the elements of result set starting from top.
4. for example : scores = [50, 10, 60, 60.5] ; scores.max_by(3){ |score| score }
initially the result set is empty
Iteration 1: result = [50]
Iteration 2: since 10 in the array is less than 50 it won't be added to result set 
result = [50]
Iteration 3: since 60 is greater than the topmost element of result array i.e 50, it will be added to the array in the beginning. result = [60, 50]
Iteration 4: since 60.5 is greater than the topmost element of result array i.e 50, then it encounters 60 and 60.5 is greater than 60 as well, so it will be added to the beginning of the result set. result = [60.5, 60, 50]

Final output : result = [60.5, 60, 50]
=end
