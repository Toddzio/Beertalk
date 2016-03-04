require 'sinatra'
require 'active_record'
require 'pry'
require 'pg'

Dir["./app/controllers/*"].each {|file| require file }
Dir["./app/models/*"].each {|file| require file }

ActiveRecord::Base.establish_connection(
  adapter:  'postgresql',
  database: 'beertalk',
<<<<<<< HEAD
  host:     'localhost',
  password: 'Change$h4'
=======
  host:     'localhost'
>>>>>>> 5e588592b239fff14f75fa2587435a1a57e5b92b
)

use Rack::MethodOverride
use BeertalkController
run ApplicationController
