require 'component1'
require 'computer1'

# Build a fast computer with lots of memory...

motherboard = Motherboard.new(TurboCPU.new, 4000)

# ... and a hard drive, a CD writer, and a DVD

drives = []
drives << Drive.new(:hard_drive, 200000, true)
drives << Drive.new(:cd, 760, true)
drives << Drive.new(:dvd, 4700, false)

computer = Computer.new(:lcd, motherboard, drives)


puts "Now with a builder"
require 'computerbuilder1'

builder = ComputerBuilder.new
builder.turbo
builder.add_cd(true)
builder.add_dvd
builder.add_hard_disk(100000)

computer = builder.computer