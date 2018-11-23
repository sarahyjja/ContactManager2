require 'contact_list'
require 'person'
require 'json'

class ContactManager

  attr_accessor :contact_list, :list, :person_detail

  def initialize
    @contact_list = ContactList.new

  end

  # def display_contacts(first_name, last_name, email, phone)
  #   @person = Person.new
  #   @list.each do |key, value|
  #   print "#{key}: #{value}."
  #   end
  # end
  # def create_new_contact
  #   new_contact = Person.new(first_name, last_name, email, phone)
  #   print "Add a new contact"
  #   first_name = $stdin.gets.chomp
  #   print "First name : #{first_name}"
  #   last_name = $stdin.gets.chomp
  #   print "Lsat name : #{last_name}"
  #
  # end

  # def sort_by(person_detail)
  #   #key = $stdin.gets.chomp
  #   @list.sort_by! do |person|
  #     person[person_detail]
  #   end
  #   # p @list
  # end
  #
  # def search(last_name)
  #   @list.select do |person|
  #     person["last_name"] == last_name
  #   end
  # end
  #
  # def search_by(key, person_detail)
  #   @list.select do |person|
  #     person[key] == person_detail
  #   end
  # end
end
