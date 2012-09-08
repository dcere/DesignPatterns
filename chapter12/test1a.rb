require 'simplelogger1'

logger = SimpleLogger.new
logger.level = SimpleLogger::INFO

logger.info('Doing the first thing')
# Do the first thing

logger.info('Now doing the second thing')
# Do the second thing