require 'tilt/erb'
require 'stethoscope'
require 'rest-client'

BASE_DIR = File.expand_path(File.join('..', '..'), __FILE__)
LIBS_DIR = File.expand_path(File.join(BASE_DIR, 'lib'), __FILE__)
CHECKS_DIR = File.expand_path(File.join(BASE_DIR, 'config', 'checks'), __FILE__)

libs = File.expand_path(File.join(LIBS_DIR, '**', '*.rb'), __FILE__)
Dir[libs].each { |file| require file }

checks = File.expand_path(File.join(CHECKS_DIR, '**', '*.rb'), __FILE__)
Dir[checks].each { |file| require file }

Stethoscope.url = "/"
