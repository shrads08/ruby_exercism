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
# 2. .each traverses a collection, performs operation on each element of the collection, but doesn't affect the original collection
# 3. .map traverses a collection, performs operation on each element of the collection, and returns a new collection with the new results, i.e affects the original array.
# .all? - returns true if all elements of the collection satisfy the condition
# .any? - returns true if any element of the collection satisfies the condition.