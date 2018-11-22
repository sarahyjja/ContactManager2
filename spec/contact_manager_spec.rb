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

  it "displays one contact" do
    contact_manager = ContactManager.new
    expect(contact_manager.create_new_contact(first_name, last_name, email, phone)).to eq([{
        # "first_name" => "John",
        # "last_name" => "Smith",
        # "email" => "john@example.com",
        # "phone" => 012344556
        }])
    end
end
