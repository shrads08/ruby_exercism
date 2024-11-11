# Write your code for the 'Resistor Color Duo' exercise in this file. Make the tests in
# `resistor_color_duo_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/resistor-color-duo` directory.

class ResistorColorDuo
  @resistor_bands = {
    'black': 0,
    'brown': 1,
    'red': 2,
    'orange': 3,
    'yellow': 4,
    'green': 5,
    'blue': 6,
    'violet': 7,
    'grey': 8,
    'white': 9
  }

  def self.value(colors_list)
    resistor_value = ''
    colors_list.each_with_index do |color, index|
      break if index >= 2

      resistor_value += @resistor_bands[color.to_sym]
    end
    resistor_value.to_i
  end
end
