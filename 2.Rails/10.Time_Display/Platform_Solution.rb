# Controller
class TimesController < ApplicationController
  def main
    #  Get the current date time and save it to a instance variable
    @time = Time.new
  end
end


# html
<div class="container">
	<div class="time_container">
		<h1>The Current Time and Date:</h1>
		<div class="time_info well well-small">
			# Manipulate the date format using strftime 
			<h3><%= @time.strftime("%b %d, %Y") %></h3>
			<h3><%= @time.strftime("%I:%M %p") %></h3>
	    </div>
	</div>
</div>


# routes 
Rails.application.routes.draw do
 root "times#main"
end
