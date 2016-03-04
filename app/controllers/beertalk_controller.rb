require_relative 'application_controller.rb'

class BeertalkController < ApplicationController
	set :views, Proc.new { File.join(root, "views") }

	get '/beertalk' do
		"Hello World"
	end
end
