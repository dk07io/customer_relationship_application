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
puts "Enter 'Add', 'Modify', 'Display All', 'Display contact:"
end

def main_menu
	puts "Welcome to #{@name}"

	while true
	print_main_menu
	menu_selection = gets.chomp.downcase
	select_menu(menu_selection)
	return if menu_selection == 7
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
			return
		 else 
			puts "Sorry type in either Add, Modify, Display All, Display Contact, Display Attribute, Delete or Exit."
	 end
end

def add_contact
		puts "First Name:"
		first_name=gets.chomp
		puts "Last Name:"
		last_name=gets.chomp
		puts "Email:"
		email=gets.chomp
		puts "Notes:"
		note=gets.chomp

		new_contact=Contact.new(first_name, last_name, email, note)
		# new_contact.display_contacts
		@rolodex.add_contact(new_contact)
	end
end



bitmakers=CRM.new("Bitmakers")
bitmakers.main_menu
