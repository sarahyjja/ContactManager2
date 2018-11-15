# storage
# alphabetic order

require 'contact_list'

RSpec.describe ContactList do
  it "Verify if the contact_list is empty" do
    contact_list = ContactList.new
    expect(contact_list.list).to eq([])
  end

  it "hold info inside" do
    contact_list = ContactList.new
    contact_list.add_new_contact("sarah")
    expect(contact_list.list).to eq(["sarah"])
  end

  # it "displays a list in alphabetical order by default" do
  #   contact_list = ContactList.new(:last_name)
  #
  #   sarah = Person.new("Sarah", "Kharraz", "sarah@example.com", 012344556)
  #   john = Person.new("John", "Smith", "john@example.com", 012344556)
  #   marion = Person.new("Marion", "Faceless", "marion@example.com", 012344556)
  # #
  # #   contact_list.add_new_contact(marion)
  # #   contact_list.add_new_contact(sarah)
  # #   contact_list.add_new_contact(john)
  # #
  #   expect(contact_list.list).to eq([{
  #       "first_name" => "Sarah",
  #       "last_name" => "Kharraz",
  #       "email_address" => "sarah@email.com",
  #       "phone_number" => "123456"
  #     }])
  #end

  it "display a list in alphabetical order by default" do
    contact_list = ContactList.new

    contact_list.add_new_contact("marion")
    contact_list.add_new_contact("sarah")
    contact_list.add_new_contact("john")

    expect(contact_list.list).to eq(["john", "marion", "sarah"])
  end
end
