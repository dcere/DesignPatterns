require 'parser2'
require 'expression2'

# Create parser
parser = Parser.new('and (bigger 1000) (filename *.rb)')
ast = parser.expression

# Evaluate AST
rb_and_big = ast.evaluate('../')
puts "Big Ruby files"
p rb_and_big
puts

# Use syntactic sugar
exp = Expression.new
expr_rb_or_sh = Or.new(exp.name('*.rb'), exp.name('*.sh'))
rb_or_sh = expr_rb_or_sh.evaluate('../')
puts "Ruby or shell files"
p rb_or_sh