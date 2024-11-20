class Matrix

  def initialize(input_string)
    @matrix_in_rows = input_string.split("\n").map { |row| row.split(" ").map(&:to_i) }
  end

  def row(array_index)
    @matrix_in_rows[array_index - 1]
  end

  def column(array_index)
    columns = @matrix_in_rows.transpose
    columns[array_index - 1]
  end
end

=begin
---------------------------Learnings-------------------------------------
1. At each "\n" split operation is performed and then 1st map operation which gives a row of string values that are ultimately converted to integers via .map(&:to_i) 
2. map(&:to_i) is a shorthand way to convert each element of an array to an integer using the to_i method.
3. transpose method is used to transpose the matrix i.e. convert rows to columns and vice-versa.
=end