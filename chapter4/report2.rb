class Report

   attr_reader :title, :text
   attr_accessor :formatter
   
   def initialize(formatter)
      @title = 'Monthly Report'
      @text = [ 'Things are going', 'really, really well']
      @formatter = formatter
   end
   
   # Changes: The context object pass a reference to itself to the
   # strategy object. The strategy object can call methods on the context.
   def output_report
      @formatter.output_report(self)
   end
   
end
