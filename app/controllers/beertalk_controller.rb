require_relative 'application_controller.rb'

class BeertalkController < ApplicationController
	set :views, Proc.new { File.join(root, "views") }

	get '/beertalk' do
		@beertalk = Beertalk.all
		erb :index
	end

	post '/beertalk' do
		beertalk = Beertalk.new(params[:beertalk])
		beertalk.save

		redirect "/beertalk"
	end
end
