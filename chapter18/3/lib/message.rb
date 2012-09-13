require 'uri'

class Message

   attr_accessor :from, :to, :text

   def initialize(from, to, text)
      @from = from
      @to = URI.parse(to)
      puts "@to is #{@to}"
      @text = text
   end

end