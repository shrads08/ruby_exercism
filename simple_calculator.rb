class SimpleCalculator
    class UnsupportedOperation < StandardError; end
    # ALLOWED_OPERATIONS = ['+', '/', '*'].freeze
    
    def self.calculate(first_operand, second_operand, operation)
      operations = {
        '+' => -> (first_operand, second_operand) { first_operand + second_operand },
        '*' => -> (first_operand, second_operand) { first_operand * second_operand },
        '/' => -> (first_operand, second_operand) { first_operand / second_operand }
      }
  
      unless first_operand.is_a?(Numeric) && second_operand.is_a?(Numeric)
        raise ArgumentError, "Both operands must be numbers"
      end
  
      begin
        unless operations.key?(operation)
          raise UnsupportedOperation, "Operation '#{operation}' is not supported."
        end
  
        # Perform the calculation
        result = operations[operation].call(first_operand, second_operand)
        "#{first_operand} #{operation} #{second_operand} = #{result}"
      rescue ZeroDivisionError
       "Division by zero is not allowed."
      end
    
    end
  end
  