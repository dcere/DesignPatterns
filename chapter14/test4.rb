require 'component4'
require 'computer4'
require 'computerbuilder4'

# Create a desktop computer
builder = DesktopBuilder.new
builder.turbo
builder.add_cd(true)
builder.add_dvd
builder.add_hard_disk(100000)
computer = builder.computer

# Create a laptop computer
builder = LaptopBuilder.new
builder.turbo
builder.add_cd(true)
builder.add_dvd
builder.add_hard_disk(100000)
computer1 = builder.computer
puts "#{computer1}"

computer2 = builder.computer
puts "#{computer2}"

# Reset the builder and use it again
builder.reset
builder.turbo
builder.add_cd(true)
builder.add_dvd
builder.add_hard_disk(100000)
computer3 = builder.computer
puts "#{computer3}"
