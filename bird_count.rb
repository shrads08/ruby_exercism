class BirdCount
  def self.last_week
    last_week_count = [0, 2, 5, 3, 7, 8, 4]
  end

  def initialize(birds_per_day)
    @birds_per_day = birds_per_day
  end

  def yesterday
    @birds_per_day[-2]
  end

  def total
    @birds_per_day.sum
  end

  def busy_days
    @birds_per_day.count { |bird_count| bird_count >= 5 }
  end

  def day_without_birds?
   @birds_per_day.any? { |bird_count| bird_count == 0 }
  end
end

#---------------------------Learning ----------------------------------------
# 1. Iteration - is process of traversing a collection; wherease Enumeration has a broader scope, apart from traversing it would process collection in different ways 
# 2. .each traverses a collection, performs operation on each element of the collection, but doesn't affect the original collection. Its primary purpose is to perform an action for each element without necessarily transforming the elements or collecting the results. Example: arr = ['tokyo','london'] ; a = arr.each{|element| element.capitalize} // the output of a will be ['tokyo','london'] illustrating that the each method traverses the array performed the operation in block but didn't transform the elements
# 3. .map traverses a collection, performs operation on each element of the collection, and returns a new collection with the new results, i.e affects the original array indirectly. Its primary purpose is to transform each element of a collection into something else and collect the results. Example: b = arr.map{|element| element.capitalize} // the output of b wil be ['Tokyo', 'London'] and output of arr will be ['tokyo','london'] illustrating that the elements have been transformed and collected in a new array , and gives illusion of modifying the original array or we can say it modifies original array indirectly by returning a new array with transformed elements.
# .all? - returns true if all elements of the collection satisfy the condition
# .any? - returns true if any element of the collection satisfies the condition.
