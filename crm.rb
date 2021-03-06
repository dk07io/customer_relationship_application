#cmr is giong to be responsible for Setting up menu and menu selection
require_relative './rolodex.rb'
require_relative './contact.rb'

class CRM
attr_reader :name

def initialize(name)
	@name = name
  @rolodex = Rolodex.new
end

def print_main_menu
puts "[1] Add a contact"
puts "[2] Modify contact"
puts "[3] Display all contact"
puts "[4] Display contact"
puts "[5] Dispaly an attribute"
puts "[6] Delete a contact"
puts "[7] Exit"
puts "Enter 'Add', 'Modify', 'Display All', 'Display contact:', 'Display Attribute', 'Delete', or 'Exit':"
end

def main_menu
	puts "Welcome to #{@name}"

	while true
	print_main_menu
	menu_selection = gets.chomp.downcase
	select_menu(menu_selection)
	return if menu_selection == "Exit"
  end
end

def select_menu (menu_selection)
	case menu_selection
		 when "add" then add_contact
		 when "modify" then modify_contact
		 when "display all" then display_all
		 when "display contact" then display_contact
		 when "display attribute" then display_attribute
		 when "delete" then delete
		 when "exit"
			puts "Goodbye!"
			exit
		 else 
			puts "Sorry type in either 'Add', 'Modify', 'Display All', 'Display contact:', 'Display Attribute', 'Delete', or 'Exit':"
	 end
end

def add_contact
		puts "First Name:"
		first_name=gets.chomp
		# unless first_name.is_a?(String)
		# 	first_name=gets.chomp
		# end
		
		puts "Last Name:"
		last_name=gets.chomp
		# if last_name.empty?
		# 	puts "Please type in your last name:"
		# 	last_name=gets.chomp
		# end

		puts "Email:"
		email=gets.chomp
		# if email.empty?
		# 	puts "Please type in your email"
		# end

		puts "Notes:"
		note=gets.chomp

		new_contact=Contact.new(first_name, last_name, email, note)
		# new_contact.display_contacts
		@rolodex.add_contact(new_contact)
	end

	def display_all
		@rolodex.display_all
	end

	def display_contact
		puts "Enter contact's ID to display it's information:"
		id_input = gets.chomp.to_i
		@rolodex.display_contact(id_input)
	end

	def display_attribute
		puts "Please enter first or last name, email or note to find your contact:"
		attribute_input = gets.chomp.downcase
		@rolodex.display_attribute(attribute_input)
	end

	def delete
		puts "Please type in the ID of the contact to delete:"
		delete_input = gets.chomp.to_i
		@rolodex.delete_contact(delete_input)
	
	end




end



bitmakers=CRM.new("Bitmakers")
bitmakers.main_menu
