require 'contact_list'
require 'person'
require 'json'

class ContactManager

  attr_reader :contact_list, :list

  def initialize
    @contact_list = ContactList.new
  end

  # def display_contacts(first_name, last_name, email, phone)
  #   @person = Person.new
  #   @list.each do |key, value|
  #   print "#{key}: #{value}."
  #   end
  # end
  def create_new_contact(last_name, email, phone)
    new_contact = Person.new
    print "Add a new contact"
    first_name = $stdin.gets.chomp
    #print "First name : #{first_name}"
    last_name = $stdin.gets.chomp
    print "Lsat name : #{last_name}"

  end
end
