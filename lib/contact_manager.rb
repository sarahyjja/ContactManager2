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
end
