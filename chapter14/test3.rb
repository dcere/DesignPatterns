require 'component3'
require 'computer3'
require 'computerbuilder3'

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

# Test the exceptions
puts "Creating a laptop with a CRT display"
builder = LaptopBuilder.new
builder.display = :crt

builder = LaptopBuilder.new
computer = builder.computer