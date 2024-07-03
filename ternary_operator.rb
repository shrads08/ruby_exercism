# This is a custom exception that you can use in your code
class NotMovieClubMemberError < RuntimeError
end

class Moviegoer

  attr_accessor :age, :member

  SENIOR_CITIZEN_AGE = 60
  ADULT_AGE = 18
  TICKET_PRICE = 15
  DISCOUNT_TICKET_PRICE = 10

  def initialize(age, member: false)
    self.age = age
    self.member = member
  end

  def ticket_price
    age >= SENIOR_CITIZEN_AGE ? DISCOUNT_TICKET_PRICE : TICKET_PRICE
  end

  def watch_scary_movie?
    age >= ADULT_AGE ? true : false
  end

  # Popcorn is 🍿
  def claim_free_popcorn!
    member ? "🍿" : (raise NotMovieClubMemberError, "Not a movie club member")
  end
end
