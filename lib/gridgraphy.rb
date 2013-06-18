require "gridgraphy/version"
require 'compass'

Compass::Frameworks.register('gridgraphy',
                             :stylesheets_directory => File.join(File.dirname(__FILE__), '..', 'stylesheets'),
                             :templates_directory => File.join(File.dirname(__FILE__), '..', 'templates'))


Sass::Script::Number.precision = 7
