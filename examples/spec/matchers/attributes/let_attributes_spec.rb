require 'person'

describe 'Matcher attributes' do

	let(:person) { Person.new }

  it 'have_attributes' do
  	person.name = 'Marivaldo'
  	person.age = 35

  	expect(person).to have_attributes(name: a_string_starting_with('M'), age: (a_value(35)))
  end

end