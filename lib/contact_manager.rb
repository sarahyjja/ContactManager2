require 'contact_list'

class ContactManager

  attr_reader :contact_list, :list

  def initialize
    @contact_list = ContactList.new
  end

end
