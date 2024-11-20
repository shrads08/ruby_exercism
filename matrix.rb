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

=end