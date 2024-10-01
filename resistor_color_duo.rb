class ResistorColorDuo 
  RESISTOR_BANDS = {
    'black'=> 0,
    'brown'=> 1,
    'red'=> 2,
    'orange'=> 3,
    'yellow'=> 4,
    'green'=> 5,
    'blue'=> 6,
    'violet'=> 7,
    'grey'=> 8,
    'white'=> 9
  }

  def self.value(colors_list)
    resistor_value = ""
    colors_list.each_with_index do | color, index |
      break if index >= 2
      resistor_value += RESISTOR_BANDS[color].to_s
    end
    resistor_value.to_i
  end
end
