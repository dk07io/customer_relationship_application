class Rolodex
	@@ids = 1001

	def initialize
		@contacts = []
		# @ids = 1001
	end
	def add_contact(contact)
		contact.id = @@ids
		@contacts << contact
		@@ids += 1
		contact
	end

	def display_all
		@contacts.each do |x|
			puts "Name: #{x.first_name} #{x.last_name},Email: #{x.email}, Note: #{x.note}"
		end
	end 

	def display_contact(id_input)
		@contacts.each do |contact| 
			if contact.id == id_input
				puts "Name: #{contact.first_name} #{contact.last_name},Email: #{contact.email}, Note: #{contact.note}"
			else 
				puts "does not exist"
			end
	end
end
end
