class LogLineParser
  def initialize(line)
    @line = line
    @string_elements = line.split(":")
  end

  def message
    @string_elements[1].strip
  end

  def log_level
    length = @string_elements[0].size
    @string_elements[0].slice(1, length-2).downcase
  end

  def reformat
    length = @string_elements[0].size
    log_level = @string_elements[0].slice(1, length-2).downcase
    reformat_string = "#{@string_elements[1].strip} (#{log_level})"
  end
end
# # ----------------------learning --------------------------
# 1. Use single quotes for string literals when there is no interpolation, and double quotes when doing interpolation
# example: string_one = "hello" // no interpolation
# puts "printing string with interpolation #{string_one}" // so here double quotes
# ! string methods with a bang change the original string
# example: string_one.capitalize! // string_one will return "Hello"
# string_one.capitalize // this will return new string with updated value 
#we can also create strings using: %{... } for interpolated strings and %q{...} for non-interpolated strings. Can be used when strings have the characters ' or " in them.
#example: new_string = %{shraddha's} // output - "shraddha's"
# new_string = %q{shraddha has "nexon"} // output - "shraddha has \"nexon\" "