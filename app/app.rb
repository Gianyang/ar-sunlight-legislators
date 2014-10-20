require 'pathname'
require 'sqlite3'

APP_ROOT = Pathname.new(File.dirname(File.expand_path(__FILE__)))

require APP_ROOT.join('app', 'models', 'person')


Database::Model.database = APP_ROOT.join('db', 'ar-sunlight.sqlite3')