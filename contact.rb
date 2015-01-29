class Contact
	attr_accessor :id, :first_name, :last_name, :email, :note

	def initialize(first_name, last_name, email, note)
		@first_name = first_name
		@last_name = last_name
		@email = email
		@note = note 
	end

	def to_s
		"Name: #{@first_name} #{@last_name},Email: #{@email}, Note: #{@note}"
	end
end

	# def display_contacts
	# 	puts "#{@first_name},#{last_name}#{email}#{notes}"
		# contact=Array.new(first_name, last_name, email, notes)
		# make_contact.each {|x| puts "#{x}"}
	# end

	# def display_contacts
	# 	new_contact.each {|x| puts "x"}
	# end

	# This is what attr_accessor gives you for free
	# def first_name
	# 	return @first_name
	# end

	# def first_name=(new_first_name)
	# 	@first_name = new_first_name
	# end