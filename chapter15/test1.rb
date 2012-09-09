require 'expression1'

expr_all = All.new
files = expr_all.evaluate('./')
puts "All files"
p files
puts

expr_rb = FileName.new('*.rb')
rbs = expr_rb.evaluate('./')
puts "Ruby files"
p rbs
puts

expr_big = Bigger.new(700)
bigs = expr_big.evaluate('./')
puts "Big files"
p bigs
puts

expr_writ = Writable.new
writs = expr_writ.evaluate('./')
puts "Writable files"
p writs
puts

# Logical operators
expr_not_rb = Not.new(FileName.new('*.rb'))
not_rbs = expr_not_rb.evaluate('./')
puts "Not Ruby files"
p not_rbs
puts

expr_rb_or_sh = Or.new(FileName.new('*.rb'),FileName.new('*.sh'))
rb_or_sh = expr_rb_or_sh.evaluate('../')
puts "Ruby or shell files"
p rb_or_sh
puts

expr_rb_and_big = And.new(FileName.new('*.rb'),Bigger.new(1000))
rb_and_big = expr_rb_and_big.evaluate('../')
puts "Big Ruby files"
p rb_and_big
puts