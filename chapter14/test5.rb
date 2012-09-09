require 'component5'
require 'computer5'
require 'computerbuilder5'

# Create a desktop computer
builder = DesktopBuilder.new
builder.add_turbo_and_cd_and_dvd_and_harddisk
computer = builder.computer