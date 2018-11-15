# storage
# alphabetic order

require 'contact_list'
require 'person'

RSpec.describe ContactList do
  it "Verify if the contact_list is empty" do
    contact_list = ContactList.new
    expect(contact_list.list).to eq([])
  end

  it "hold info inside" do
    contact_list = ContactList.new
    person = Person.new("Sarah", "Kharraz", "sarah@example.com", 012344556)
    contact_list.add_new_contact(person)
    expect(contact_list.list).to eq([person])
  end

  it "displays a list in alphabetical order by default" do
    contact_list = ContactList.new

    sarah = Person.new("Sarah", "Kharraz", "sarah@example.com", 012344556)
    john = Person.new("John", "Smith", "john@example.com", 012344556)
    marion = Person.new("Marion", "Faceless", "marion@example.com", 012344556)

    contact_list.add_new_contact(marion)
    contact_list.add_new_contact(john)
    contact_list.add_new_contact(sarah)

    expect(contact_list.list).to eq([marion, sarah, john])
  end

  it "search for a contact by last_name and view their details" do
    contact_list = ContactList.new
    sarah = Person.new("Sarah", "Kharraz", "sarah@example.com", 012344556)
    john = Person.new("John", "Smith", "john@example.com", 012344556)
    marion = Person.new("Marion", "Faceless", "marion@example.com", 012344556)

    contact_list.add_new_contact(marion)
    contact_list.add_new_contact(john)
    contact_list.add_new_contact(sarah)

    expect(contact_list.search("sarah")).to eq(sarah)

  end
end
