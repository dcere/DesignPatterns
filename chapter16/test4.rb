require 'backup4'
require 'packrat4'

eval(File.read('backup4.pr'))
PackRat.instance.run