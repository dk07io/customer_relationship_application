class Contacts
	attr_accessor :first_name, :last_name, :email, :notes

	def initialize(first_name, last_name, email, notes)
		@first_name=first_name
		@last_name=last_name
		@email=email
		@notes=notes 
	end

	# This is what attr_accessor gives you for free
	# def first_name
	# 	return @first_name
	# end

	# def first_name=(new_first_name)
	# 	@first_name = new_first_name
	# end
end