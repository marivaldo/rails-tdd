require 'person'

describe 'Matcher attributes' do
  it 'have_attributes' do
    person = Person.new
    person.name = "Marivaldo"
    person.age = 35
    expect(person).to have_attributes(name: "Marivaldo", age: 35)
  end
end