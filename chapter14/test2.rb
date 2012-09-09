require 'component2'
require 'computer2'
require 'computerbuilder2'

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
computer = builder.computer

# Test the exception
puts "Creating a laptop with a CRT display"
builder.display = :crt