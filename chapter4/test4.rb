require './formatter4.rb'
require './report4.rb'

report = Report.new &HTMLFormatter
report.output_report

report = Report.new &PlainTextFormatter
report.output_report
