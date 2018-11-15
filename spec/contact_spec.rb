require 'contact'

RSpec.describe Contact do

  it "create a new instance of contact and return true if it's an object" do
    addressbook = Contact.new

    expect(addressbook.is_a?Object).to eq(true)
  end

  it "says if @all_contacts is in an [empty bucket]" do
    addressbook = Contact.new
    expect(addressbook.all_contacts).to eq([])
  end

  it "says if @all_contacts can receive a first name" do
    addressbook = Contact.new
    addressbook.create_new_contact("Sarah", "Kharraz", "sarah@email.com", "123456")
    expect(addressbook.all_contacts).to eq([{
        "first_name" => "Sarah",
        "last_name" => "Kharraz",
        "email_address" => "sarah@email.com",
        "phone_number" => "123456"
      }])
  end

  # it "creates a new contact using the Person class and adds it to @contacts" do
  #   allow($stdin).to receive(:gets).and_return("sarah", "kara")
  #   addressbook = Contact.new
  #   addressbook.gabarit_new_person
  #   expect(addressbook.all_contacts.empty?).to eq(true)
  # end
end
