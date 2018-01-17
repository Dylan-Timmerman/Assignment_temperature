class AwesomeJob < ApplicationJob
  queue_as :default

  thread = Thread.new do
  	loop do
		MQTT::Client.connect('mqtt://labict.be:1883') do |c|
		  # If you pass a block to the get method, then it will loop
		  c.get('') do |topic,message| #vul tussen quotes de topic in voor de MQTT
		  	# object = JSON.parse("#{message}")
		  	# puts object
		  	temp = "#{message}"
		    puts "#{topic}: #{message}"
		    Tempdb.create(temp: temp.to_f)
		  end
		end
	 end
  end
end
