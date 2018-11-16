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
    contact_list.add_new_contact("Sarah", "Kharraz", "sarah@example.com", 012344556)
    expect(contact_list.list).to eq([{
      "first_name" => "Sarah",
      "last_name" => "Kharraz",
      "email_address" => "sarah@example.com",
      "phone_number" => 012344556
    }])
  end

  it "stores multiple contacts" do
    contact_list = ContactList.new

    contact_list.add_new_contact("Marion", "Faceless", "marion@example.com", 012344556)
    contact_list.add_new_contact("John", "Smith", "john@example.com", 012344556)
    contact_list.add_new_contact("Sarah", "Kharraz", "sarah@example.com", 012344556)

    expect(contact_list.list).to eq([{
        "first_name" => "Marion",
        "last_name" => "Faceless",
        "email_address" => "marion@example.com",
        "phone_number" => 012344556
      },
      {
        "first_name" => "John",
        "last_name" => "Smith",
        "email_address" => "john@example.com",
        "phone_number" => 012344556
      },
      {
        "first_name" => "Sarah",
        "last_name" => "Kharraz",
        "email_address" => "sarah@example.com",
        "phone_number" => 012344556
      }])
  end


  it "displays a list in alphabetical order by last_name" do
    contact_list = ContactList.new
    contact_list.add_new_contact("Marion", "Faceless", "marion@example.com", 012344556)
    contact_list.add_new_contact("John", "Smith", "john@example.com", 012344556)
    contact_list.add_new_contact("Sarah", "Kharraz", "sarah@example.com", 012344556)

    expect(contact_list.sort_by("last_name")).to eq([{
        "first_name" => "Marion",
        "last_name" => "Faceless",
        "email_address" => "marion@example.com",
        "phone_number" => 012344556
        },
        {
        "first_name" => "Sarah",
        "last_name" => "Kharraz",
        "email_address" => "sarah@example.com",
        "phone_number" => 012344556
        },
        {
        "first_name" => "John",
        "last_name" => "Smith",
        "email_address" => "john@example.com",
        "phone_number" => 012344556
        }])
  end



  xit "search for a contact by last_name and view their details" do
    contact_list = ContactList.new
    sarah = Person.new("Sarah", "Kharraz", "sarah@example.com", 012344556)
    john = Person.new("John", "Smith", "john@example.com", 012344556)
    marion = Person.new("Marion", "Faceless", "marion@example.com", 012344556)

    contact_list.add_new_contact(marion)
    contact_list.add_new_contact(john)
    contact_list.add_new_contact(sarah)

    expect(contact_list.search("Kharraz")).to eq([sarah])

  end
end
