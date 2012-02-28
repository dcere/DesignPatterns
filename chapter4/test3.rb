require './formatter3.rb'
require './report3.rb'

report = Report.new(HTMLFormatter.new)
report.output_report

report = Report.new(PlainTextFormatter.new)
report.output_report
