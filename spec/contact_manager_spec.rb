require 'contact_manager'
require 'contact_list'
require 'person'
require 'json'

RSpec.describe ContactManager do
  it "Create a new instance of Contact Manager" do
    contact_manager = ContactManager.new
    expect(contact_manager.is_a?Object).to eq(true)
  end

  it "Create an instance of contact_list" do
    contact_manager = ContactManager.new
    expect(contact_manager.contact_list.list).to eq([])
  end

  xit "displays the contact list" do
    contact_manager = ContactManager.new
    # contact_list.add_new_contact("Marion", "Faceless", "marion@example.com", 012344556)
    # contact_list.add_new_contact("John", "Smith", "john@example.com", 012344556)
    # contact_list.add_new_contact("Sarah", "Kharraz", "sarah@example.com", 012344556)
    #
    # contact_list.sort_by("first_name")
    expect(contact_manager.display_contacts(first_name, last_name, email, phone)).to eq([{
    #expect(contact_manager.display_contacts(key, value)).to eq([{
        "first_name" => "John",
        "last_name" => "Smith",
        "email" => "john@example.com",
        "phone" => 012344556
      },
      {
        "first_name" => "Marion",
        "last_name" => "Faceless",
        "email" => "marion@example.com",
        "phone" => 012344556
      },
      {
        "first_name" => "Sarah",
        "last_name" => "Kharraz",
        "email" => "sarah@example.com",
        "phone" => 012344556
        }])
    end
end
