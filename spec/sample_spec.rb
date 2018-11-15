require 'sample'

RSpec.describe Sample do
  it 'ask for a first name' do
    user = Sample.new("Sarah", "Kharraz", "s@k.com", 123456789)

    expect(user.first_name).to eq("Sarah")
  end

  it 'ask for a last name' do
    user = Sample.new("Sarah", "Kharraz", "s@k.com", 123456789)

    expect(user.last_name).to eq("Kharraz")
  end

  it 'ask for a phone' do
    user = Sample.new("Sarah", "Kharraz", "s@k.com", 123456789)

    expect(user.phone).to eq(123456789)
  end

  it 'ask for an email' do
    user = Sample.new("Sarah", "Kharraz", "s@k.com", 123456789)

    expect(user.email).to eq("s@k.com")
  end
end
