module Chess

  RANKS = 1..8
  FILES = 'A'..'H'

  def self.valid_square?(rank, file)
    RANKS.include?(rank) && FILES.include?(file) ? true : false
  end

  def self.nick_name(first_name, last_name)
    nickname = first_name[0..1] + last_name[-2..-1]
    nickname.upcase!
  end

  def self.move_message(first_name, last_name, square)
    nickname = nick_name(first_name, last_name)
    rank = square[1].to_i
    file = square[0]
    valid_square?(rank, file) ? "#{nickname} moved to #{square}" : "#{nickname} attempted to move to #{square}, but that is not a valid square"
  end
end

#----------------------learning -----------------------------
#1. when using range operator .. or ... and required to call a method use paranthese, else method will be called on second argument/ending value. Example: (1..3).sum