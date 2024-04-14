class Attendee

  def initialize(height)
    @height = height
  end

  def height
    @height
  end

  def pass_id
    @pass_id.nil? ? nil : @pass_id
  end

  def issue_pass!(pass_id)
    @pass_id = pass_id
  end

  def revoke_pass!
    @pass_id = nil
  end

end

# ----------------------learning --------------------------
# Nil - means absence of object in ruby, a variable is initialized nil by default initially, unless assigned a value.
# Instance variables are states of an Object. They live within an object and are used to hold some internal state.