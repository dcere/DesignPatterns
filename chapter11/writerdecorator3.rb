module NumberingWriter

   attr_reader :line_number

   def write_line(line)
      @line_number = 1 unless @line_number
      super("#{@line_number}: #{line}")
      @line_number += 1
   end

end


module CheckSummingWriter

   attr_reader :check_sum

   def write_line(line)
      @check_sum = 0 unless @check_sum
      line.each_byte { |byte| @check_sum = (@check_sum + byte % 256) }
      @check_sum += "\n"[0] % 256
      super(line)
   end

end


class Writer

   def write(line)
      @f.write(line)
   end

end