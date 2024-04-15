class Attendee
  def initialize(height)
    @height = height
  end

  def issue_pass!(pass_id)
    @pass_id = pass_id
  end

  def revoke_pass!
    @pass_id = nil
  end

  # Do not edit above methods, add your own methods below.

  def has_pass?
    @pass_id.nil? ? false : true
  end

  def fits_ride?(ride_minimum_height)
    @height >= ride_minimum_height ? true : false
  end

  def allowed_to_ride?(ride_minimum_height)
    has_pass? && fits_ride?(ride_minimum_height) ? true : false
  end
end
# ----------------------learning --------------------------
# 1. **Implicit return** - last evaluated expression is automatically returned