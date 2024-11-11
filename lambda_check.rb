class LambdaCheck
  @@add = ->(x, y) { return "x+y is : " + (x + y).to_s }
  def self.calculate(x,y,operation)
    case operation
      when '+' then puts @@add.call(x,y)
    end
    puts "operation completed"
  end
end
