require 'string_not_empty'

describe 'Classes' do
  it 'be_instance_of' do
    expect(10).to be_instance_of(Integer) # exactly classe
  end

  it 'be_kind_of' do
    string = StringNotEmpty.new
    expect(string).to be_kind_of(String)
    expect(string).to be_kind_of(StringNotEmpty)
    expect(10).to be_kind_of(Integer) # may be by inheritance
  end

  it 'respond_to' do
    expect('ruby').to respond_to(:size)
    expect('ruby').to respond_to(:count)
  end

  it 'be_a / be_an' do
    string = StringNotEmpty.new
    expect(string).to be_a(String)
    expect(string).to be_a(StringNotEmpty)

    expect(string).to be_an(String)
    expect(string).to be_an(StringNotEmpty)
  end
end