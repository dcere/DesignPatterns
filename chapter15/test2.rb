require 'parser2'

# Create parser
parser = Parser.new('and (bigger 1000) (filename *.rb)')
ast = parser.expression

# Evaluate AST
rb_and_big = ast.evaluate('../')
puts "Big Ruby files"
p rb_and_big
puts

# Use syntactic sugar
require 'expression2'
require 'methods2'

expr_rb_or_sh = Or.new(name('*.rb'), name('*.sh'))
rb_or_sh = expr_rb_or_sh.evaluate('../')
puts "Ruby or shell files"
p rb_or_sh