require 'contact_manager'

RSpec.describe ContactManager do
  it "Create a new instance of Contact Manager" do
    contact_manager = ContactManager.new
    expect(contact_manager.is_a?Object).to eq(true)
  end

  it "Create an instance of contact_list" do
    contact_manager = ContactManager.new
    expect(contact_manager.contact_list.list).to eq([])
  end

end
