require_relative 'application_controller.rb'

class BeertalkController < ApplicationController
	set :views, Proc.new { File.join(root, "views") }

	get '/beertalk' do
<<<<<<< HEAD
		@beertalk = Beertalk.all
		erb :index
	end

	post '/beertalk' do
		beertalk = Beertalk.new(params[:beertalk])
		beertalk.save

		redirect "/beertalk"
=======
		erb :index
>>>>>>> 110343b43549fc14105fb780e26194e47b6ea425
	end
end
