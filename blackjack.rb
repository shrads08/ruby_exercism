module Blackjack
  def self.parse_card(card)
    case card
    when "ace" then 11
    when "two" then 2
    when "three" then 3
    when "four" then 4
    when "five" then 5
    when "six" then 6
    when "seven" then 7
    when "eight" then 8
    when "nine" then 9
    when "ten", "jack", "queen", "king" then 10
    else 0
    end
  end

  def self.card_range(card1, card2)
    score = parse_card(card1) + parse_card(card2)
    case score
    when 4..11 then "low"
    when 12..16 then "mid"
    when 17..20 then "high"
    when 21 then "blackjack"
    end
  end

  def self.first_turn(card1, card2, dealer_card)
    case
    when card1 == "ace" && card2 == "ace"
      "P"
    when card_range(card1, card2) == "blackjack"
       dealer_card != "ace" && dealer_card != "figure" && dealer_card != "ten" ? "W" : "S"
    when card_range(card1, card2) == "high"
      "S"
    when card_range(card1, card2) == "mid"
      parse_card(dealer_card) >= 7 ? "H" : "S"
    when parse_card(card1) + parse_card(card2) <= 11
      "H"
    end
  end
end

# --------------------------Learning ------------------------------------
#1. case statements - flow control statements that provide a more readable version of chained multiple if-else statements
#2. case keyword is followed by an optional expression which is then compared to each expression in the when clause (after when keyword)
#3. when keyword is followed by an expression that is compared to the expression in the case statement
#4. Else statement is the last statement which is executed when they are no matching instances of the case statement
#5. we can have single line when expressions as given in first method.
#6. '==' is used for value equality comparison; checks if the values are same both on left and right side of the operator. In javascript if values are of different types i.e. 1 == '1' then type coercion is performed to make them compatible for comparison whereas in ruby 1 == '1' will give false because Ruby doesn't  perform type coercion (implicit type conversion) so extensively as it is done in js
#7. '===' in ruby checks if the right side is a member of the left side or checks if the right side is an instance of the left side. (In js it's strict equality comparison checks for both value and type of the operands)
