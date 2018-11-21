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

  it "asks to create a contact" do
    contact_manager = ContactManager.new
    allow($stdin).to receive(:gets).and_return("anna", "dupont", "ad@example.com", 012343232)
    expect(contact_manager.create_new_contact(first_name, last_name, email, phone)).to eq("anna", "dupont", "ad@example.com", 012343232)
    end
end
