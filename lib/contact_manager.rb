require 'contact_list'

class ContactManager

  attr_reader :contact_list, :list

  def initialize
    @contact_list = ContactList.new
  end

  def display_contacts
    @list.each do |key, value|
    puts "#{key}: #{value}."
    end
  end
end
