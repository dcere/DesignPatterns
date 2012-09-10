def all
   All.new
end


def bigger(size)
   Bigger.new(size)
end


def name(pattern)
   FileName.new(pattern)
end


def except(expression)
   Not.new(expression)
end


def writable
   Writable.new
end