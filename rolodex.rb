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

	def display_attribute(attribute_input)
		@contacts.each do |contact|
			if attribute_input.include? "first"
				puts contact.first_name
			elsif attribute_input.include? "last"
				puts contact.last_name
			elsif attribute_input.include? "email"
				puts contact.email
			elsif attribute_input.include? "note"
				puts contact.note
			else
				return
			end
		end
	end

	def find_contact(id_number)
		@contacts.find { |contact| contact.id = id_number}
	end

	def delete_contact(delete_input)
		contact_to_delete = find_contact(delete_input)
		if @contacts.delete(contact_to_delete)
			puts "contact deleted"
		else
			puts "This contact does not exist"
		end
		# contact = @contacts[("#{delete_input}").to_i]
		# contact.delete

		# @contacts.each do |contacts|
		# 	if contact.id == delete_input
		# 		@contacts.delete(delete_input)
		# 		puts "contact deleted!"
		# 	else
		# 		puts "Sorry, this ID doesnt not exist"
		# 	end
		# end
	end
end
				# 		if attribute.id || attribute.first_name || attribute.last_name || attribute.email || attribute.note == attribute_input
	# 			puts "Name: #{attribute.first_name} #{attribute.last_name},Email: #{attribute.email}, Note: #{attribute.note}"
	# 		else
	# 			puts "Sorry, there was nothing under your search"
	# 		end
	# 	end
	# end

