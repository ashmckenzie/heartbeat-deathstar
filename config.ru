require File.expand_path(File.join('..', 'config', 'initialise'), __FILE__)

run Rack::URLMap.new("/" => Stethoscope.new(nil))
