require './formatter1.rb'
require './report1.rb'

report = Report.new(HTMLFormatter.new)
report.output_report
