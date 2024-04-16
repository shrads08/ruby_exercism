class AssemblyLine

  HOURS_TO_MINUTE = 60
  CARS_PER_HOUR = 221

  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    if @speed >=1 && @speed <= 4
      success_rate = 1
    elsif @speed >= 5 && @speed <= 8
      success_rate = 0.9
    elsif @speed == 9
      success_rate = 0.8
    elsif @speed == 10 
      success_rate = 0.77
    else
      return 
    end 
    (success_rate * CARS_PER_HOUR * @speed).round(1) 
  end

  def working_items_per_minute
    (production_rate_per_hour / HOURS_TO_MINUTE).to_i
  end
end
# # ----------------------learning --------------------------
# 1. Need to improve further.
# 2. float.round(1) within braces is the precision
# 3. float.ceil round up
# 4. float.floor round down
